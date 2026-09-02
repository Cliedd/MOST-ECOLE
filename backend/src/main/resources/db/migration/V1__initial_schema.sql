-- ============================================================
-- MOST ÉCOLE – Schéma initial PostgreSQL
-- V1__initial_schema.sql
-- Agent 3 (ModeleDonnees) – Validation : OK
-- ============================================================

-- Extension UUID
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- ============================================================
-- TABLE : users
-- ============================================================
CREATE TABLE users (
    id            UUID          DEFAULT gen_random_uuid() PRIMARY KEY,
    email         VARCHAR(255)  NOT NULL UNIQUE,
    password_hash VARCHAR(255)  NOT NULL,
    first_name    VARCHAR(100)  NOT NULL,
    last_name     VARCHAR(100)  NOT NULL,
    role          VARCHAR(20)   NOT NULL CHECK (role IN ('ROLE_ADMIN','ROLE_TEACHER','ROLE_STUDENT','ROLE_PARENT')),
    enabled       BOOLEAN       NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMP     NOT NULL DEFAULT now(),
    updated_at    TIMESTAMP     NOT NULL DEFAULT now()
);

CREATE INDEX idx_users_email  ON users(email);
CREATE INDEX idx_users_role   ON users(role);

-- ============================================================
-- TABLE : levels (1ère à 6ème secondaire)
-- ============================================================
CREATE TABLE levels (
    id           BIGSERIAL    PRIMARY KEY,
    level_number INTEGER      NOT NULL UNIQUE CHECK (level_number BETWEEN 1 AND 6),
    degree_name  VARCHAR(100) NOT NULL,
    description  TEXT
);

-- ============================================================
-- TABLE : subjects (matières)
-- ============================================================
CREATE TABLE subjects (
    id          BIGSERIAL    PRIMARY KEY,
    name        VARCHAR(150) NOT NULL,
    description TEXT,
    level_id    BIGINT       NOT NULL REFERENCES levels(id) ON DELETE CASCADE
);

CREATE INDEX idx_subjects_level ON subjects(level_id);

-- ============================================================
-- TABLE : students
-- ============================================================
CREATE TABLE students (
    id            UUID    PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
    birth_date    DATE,
    current_level INTEGER CHECK (current_level BETWEEN 1 AND 6),
    parent_id     UUID    REFERENCES users(id)
);

-- ============================================================
-- TABLE : teachers
-- ============================================================
CREATE TABLE teachers (
    id             UUID          PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
    specialization VARCHAR(255),
    bio            TEXT,
    hourly_rate    DECIMAL(10,2)
);

-- ============================================================
-- TABLE : curriculum_expectations (référentiel officiel)
-- ============================================================
CREATE TABLE curriculum_expectations (
    id          BIGSERIAL    PRIMARY KEY,
    subject_id  BIGINT       NOT NULL REFERENCES subjects(id) ON DELETE CASCADE,
    level_id    BIGINT       NOT NULL REFERENCES levels(id)   ON DELETE CASCADE,
    topic       VARCHAR(255) NOT NULL,
    description TEXT,
    source_url  VARCHAR(500),
    source_name VARCHAR(255)
);

CREATE INDEX idx_curriculum_subject ON curriculum_expectations(subject_id);
CREATE INDEX idx_curriculum_level   ON curriculum_expectations(level_id);

-- ============================================================
-- TABLE : courses
-- ============================================================
CREATE TABLE courses (
    id           UUID         DEFAULT gen_random_uuid() PRIMARY KEY,
    title        VARCHAR(255) NOT NULL,
    description  TEXT,
    subject_id   BIGINT       NOT NULL REFERENCES subjects(id),
    level_id     BIGINT       NOT NULL REFERENCES levels(id),
    teacher_id   UUID         REFERENCES users(id),
    content_type VARCHAR(20)  NOT NULL CHECK (content_type IN ('VIDEO','TEXT','QUIZ','EXERCISE')),
    content_url  VARCHAR(500),
    content_text TEXT,
    is_published BOOLEAN      NOT NULL DEFAULT FALSE,
    created_at   TIMESTAMP    NOT NULL DEFAULT now(),
    updated_at   TIMESTAMP    NOT NULL DEFAULT now()
);

CREATE INDEX idx_courses_level      ON courses(level_id);
CREATE INDEX idx_courses_subject    ON courses(subject_id);
CREATE INDEX idx_courses_teacher    ON courses(teacher_id);
CREATE INDEX idx_courses_published  ON courses(is_published);

-- ============================================================
-- TABLE : course_progress
-- ============================================================
CREATE TABLE course_progress (
    id                  BIGSERIAL  PRIMARY KEY,
    student_id          UUID       NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    course_id           UUID       NOT NULL REFERENCES courses(id)  ON DELETE CASCADE,
    progress_percentage INTEGER    NOT NULL DEFAULT 0 CHECK (progress_percentage BETWEEN 0 AND 100),
    last_accessed       TIMESTAMP,
    completed           BOOLEAN    NOT NULL DEFAULT FALSE,
    UNIQUE(student_id, course_id)
);

CREATE INDEX idx_progress_student ON course_progress(student_id);

-- ============================================================
-- TABLE : quizzes
-- ============================================================
CREATE TABLE quizzes (
    id         UUID         DEFAULT gen_random_uuid() PRIMARY KEY,
    course_id  UUID         NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    title      VARCHAR(255) NOT NULL,
    time_limit INTEGER
);

-- ============================================================
-- TABLE : quiz_questions
-- ============================================================
CREATE TABLE quiz_questions (
    id            BIGSERIAL   PRIMARY KEY,
    quiz_id       UUID        NOT NULL REFERENCES quizzes(id) ON DELETE CASCADE,
    question_text TEXT        NOT NULL,
    question_type VARCHAR(20) NOT NULL CHECK (question_type IN ('MCQ','TRUE_FALSE','OPEN')),
    points        INTEGER     NOT NULL DEFAULT 1,
    order_index   INTEGER
);

CREATE INDEX idx_questions_quiz ON quiz_questions(quiz_id);

-- ============================================================
-- TABLE : quiz_answers
-- ============================================================
CREATE TABLE quiz_answers (
    id          BIGSERIAL PRIMARY KEY,
    question_id BIGINT    NOT NULL REFERENCES quiz_questions(id) ON DELETE CASCADE,
    answer_text TEXT      NOT NULL,
    is_correct  BOOLEAN   NOT NULL DEFAULT FALSE
);

-- ============================================================
-- TABLE : student_quiz_results
-- ============================================================
CREATE TABLE student_quiz_results (
    id           BIGSERIAL      PRIMARY KEY,
    student_id   UUID           NOT NULL REFERENCES students(id) ON DELETE CASCADE,
    quiz_id      UUID           NOT NULL REFERENCES quizzes(id),
    score        DECIMAL(5,2),
    max_score    DECIMAL(5,2),
    submitted_at TIMESTAMP
);

CREATE INDEX idx_quiz_results_student ON student_quiz_results(student_id);

-- ============================================================
-- TABLE : medical_exam_prep (Concours médecine)
-- ============================================================
CREATE TABLE medical_exam_prep (
    id               BIGSERIAL    PRIMARY KEY,
    subject          VARCHAR(20)  NOT NULL CHECK (subject IN ('BIOLOGY','CHEMISTRY','PHYSICS','MATHEMATICS','REASONING')),
    topic            VARCHAR(255) NOT NULL,
    content          TEXT,
    year             INTEGER,
    is_official      BOOLEAN      NOT NULL DEFAULT FALSE,
    source_url       VARCHAR(500),
    difficulty_level VARCHAR(20)
);

CREATE INDEX idx_medical_subject ON medical_exam_prep(subject);
CREATE INDEX idx_medical_year    ON medical_exam_prep(year);

-- ============================================================
-- TABLE : appointments (Accompagnement)
-- ============================================================
CREATE TABLE appointments (
    id               UUID         DEFAULT gen_random_uuid() PRIMARY KEY,
    student_id       UUID         NOT NULL REFERENCES students(id),
    teacher_id       UUID         NOT NULL REFERENCES users(id),
    scheduled_at     TIMESTAMP    NOT NULL,
    duration_minutes INTEGER      NOT NULL DEFAULT 60,
    status           VARCHAR(20)  NOT NULL DEFAULT 'SCHEDULED'
                     CHECK (status IN ('SCHEDULED','CONFIRMED','CANCELLED','COMPLETED')),
    notes            TEXT,
    meeting_url      VARCHAR(500)
);

CREATE INDEX idx_appointments_student ON appointments(student_id);
CREATE INDEX idx_appointments_teacher ON appointments(teacher_id);
CREATE INDEX idx_appointments_status  ON appointments(status);

-- ============================================================
-- TABLE : messages
-- ============================================================
CREATE TABLE messages (
    id          UUID         DEFAULT gen_random_uuid() PRIMARY KEY,
    sender_id   UUID         NOT NULL REFERENCES users(id),
    receiver_id UUID         NOT NULL REFERENCES users(id),
    subject     VARCHAR(255),
    content     TEXT         NOT NULL,
    read_at     TIMESTAMP,
    created_at  TIMESTAMP    NOT NULL DEFAULT now()
);

CREATE INDEX idx_messages_receiver ON messages(receiver_id);
CREATE INDEX idx_messages_sender   ON messages(sender_id);

-- ============================================================
-- Trigger : auto-update updated_at
-- ============================================================
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_users_updated_at
    BEFORE UPDATE ON users
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER trg_courses_updated_at
    BEFORE UPDATE ON courses
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();
