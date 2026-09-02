# PROJECT STATUS — MOST ÉCOLE

> Generated: September 2026 | Sprint 1 complete

---

## Architecture Summary

```
MOST-ECOLE/
├── backend/          Spring Boot 3.2.5 + Java 17 + PostgreSQL 15
├── frontend/         React 18 + Vite 5 + MUI 5 + Redux Toolkit
├── docker/           Dockerfiles + docker-compose + nginx.conf
├── .github/          CI/CD workflows (GitHub Actions)
├── SOURCES.md        Legal content inventory
└── PROJECT_STATUS.md (this file)
```

---

## Sprint Completion Status

### ✅ Sprint 1 – Backend Foundation

| Component              | Status | Notes                                         |
|------------------------|:------:|-----------------------------------------------|
| Maven POM              | ✅     | Spring Boot 3.2.5, JWT 0.12.5, Flyway         |
| Application config     | ✅     | dev + prod profiles                           |
| Domain enums           | ✅     | Role, ContentType, QuestionType, etc.         |
| JPA entities           | ✅     | 15 entities with auditing                     |
| Flyway V1 schema       | ✅     | 16 tables, indexes, triggers                  |
| Flyway V2 seed data    | ✅     | 6 levels, 61 subjects, admin user             |
| JWT security           | ✅     | Provider + filter + UserDetailsService        |
| Spring Security config | ✅     | RBAC, CORS, BCrypt-12                         |
| OpenAPI config         | ✅     | Swagger UI with JWT bearer                    |
| DTOs & validation      | ✅     | Jakarta Bean Validation, Java records         |
| Repository layer       | ✅     | All 10 repositories with custom queries       |
| Exception handling     | ✅     | RFC 7807 ProblemDetail responses              |
| AuthService            | ✅     | Register + login with JWT                     |

### ✅ Sprint 2 – Backend Controllers

| Controller                    | Status | Endpoints                                     |
|-------------------------------|:------:|-----------------------------------------------|
| AuthController                | ✅     | POST /register, /login, /logout               |
| LevelController               | ✅     | GET /levels, /levels/{id}/subjects            |
| CourseController              | ✅     | CRUD /courses with RBAC                       |
| AdminController               | ✅     | GET/PATCH/DELETE /admin/users, /statistics    |
| AppointmentController         | ✅     | GET appointments by student/teacher           |
| StudentProgressController     | ✅     | GET/PUT progress, GET summary                 |
| MedicalExamController         | ✅     | GET/POST/DELETE /medical-exam resources       |

### ✅ Sprint 3 – Frontend Foundation

| Component                | Status | Notes                                     |
|--------------------------|:------:|-------------------------------------------|
| package.json + Vite      | ✅     | React 18, MUI 5, Redux Toolkit, Recharts  |
| MUI theme                | ✅     | Primary #1B4F72, secondary #F39C12        |
| Redux store              | ✅     | auth + courses + notifications slices     |
| Axios with interceptors  | ✅     | JWT auto-attach, 401 redirect             |
| API layer                | ✅     | authApi, coursesApi, levelsApi            |
| React Router routes      | ✅     | Public + student + teacher + admin guards |
| PrivateRoute (RBAC)      | ✅     | Role-based redirect                       |
| Navbar                   | ✅     | User menu, notifications, logout          |
| Sidebar                  | ✅     | Role-based navigation                     |
| MainLayout               | ✅     | Composable layout wrapper                 |
| LoadingSpinner           | ✅     | Reusable UI component                     |
| LevelBadge               | ✅     | Color-coded level chip                    |
| CourseCard               | ✅     | Progress + content type + navigation      |

### ✅ Sprint 4 – Frontend Pages

| Page                              | Status | Notes                               |
|-----------------------------------|:------:|-------------------------------------|
| Home (landing)                    | ✅     | Hero, stats, features, CTA          |
| NotFound (404)                    | ✅     | Navigation recovery                 |
| Login                             | ✅     | RHF + Yup + role redirect           |
| Register                          | ✅     | Role selection, validation          |
| Student Dashboard                 | ✅     | Stats, chart, concours widget       |
| Student MedicalExamPrep           | ✅     | Countdown, 5 subjects, annales      |
| Student CourseView                | ✅     | Video/text + progress sidebar       |
| Student MyProgress                | ✅     | Radar + line chart + bars           |
| Student Appointments              | ✅     | Status chips, join session button   |
| Teacher Dashboard                 | ✅     | Activity chart, students, RDV list  |
| Teacher CourseManager             | ✅     | CRUD list with filters              |
| Teacher ContentBuilder            | ✅     | 3-step wizard, all content types    |
| Admin Dashboard                   | ✅     | Growth chart, pie chart, users      |
| Admin UserManager                 | ✅     | Table + pagination + CRUD dialog    |
| Admin CurriculumManager           | ✅     | Grouped by topic, source links      |

### ✅ Sprint 5 – DevOps

| Component               | Status | Notes                                       |
|-------------------------|:------:|---------------------------------------------|
| Dockerfile.backend      | ✅     | Multi-stage, non-root user, healthcheck     |
| Dockerfile.frontend     | ✅     | Multi-stage, nginx, SPA fallback            |
| nginx.conf              | ✅     | Gzip, cache headers, /health endpoint       |
| docker-compose.yml      | ✅     | postgres + backend + frontend + healthchecks|
| CI/CD (GitHub Actions)  | ✅     | Test + build + GHCR push on main            |
| application-prod.yml    | ✅     | Hikari pool, logging, management endpoints  |

---

## Known Gaps & TODO

### Backend
- [ ] MessageController (POST/GET /api/messages)
- [ ] QuizController (CRUD + submission + auto-grading)
- [ ] CurriculumExpectationController
- [ ] Unit tests (AuthServiceImpl) — JUnit 5 + Mockito
- [ ] MockMvc integration tests for controllers
- [ ] Rate limiting (Bucket4j or Spring rate limiter)
- [ ] Email notification service (Spring Mail + Mailhog)

### Frontend
- [ ] Pages: `/student/courses` (course catalog with filters)
- [ ] Pages: `/teacher/appointments` (calendar view)
- [ ] Pages: `/student/courses/:id/quiz` (quiz runner)
- [ ] i18n (fr-BE locale strings, currently hardcoded)
- [ ] Real API integration (all pages use mock data)
- [ ] Accessibility audit (WCAG 2.1 AA)

### Content
- [ ] 61 subjects seeded in DB — content (courses) to be created by teachers
- [ ] FSE/EcoSoc UAA 1–6 structured as CurriculumExpectations
- [ ] Concours médecine: annales 2017–2025 linked
- [ ] See SOURCES.md for full inventory

---

## Quick Start (Development)

```bash
# 1. Start PostgreSQL
docker run -d --name mostecole_pg \
  -e POSTGRES_DB=mostecole_db \
  -e POSTGRES_USER=mostecole \
  -e POSTGRES_PASSWORD=devpassword \
  -p 5432:5432 postgres:15-alpine

# 2. Start backend
cd backend
export JWT_SECRET="dev-secret-key-at-least-32-characters-long"
./mvnw spring-boot:run -Dspring-boot.run.profiles=dev

# 3. Start frontend
cd frontend
npm install
npm run dev
# → http://localhost:3000

# Default admin credentials (see V2 migration):
# Email: admin@mostecole.be
# Password: Admin@2025!
```

## Production (Docker Compose)

```bash
cp .env.example .env  # edit secrets
docker compose -f docker/docker-compose.yml up -d
# → http://localhost
```
