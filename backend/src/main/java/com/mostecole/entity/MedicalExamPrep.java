package com.mostecole.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "medical_exam_prep")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MedicalExamPrep {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "subject", nullable = false, length = 20)
    private MedicalSubject subject;

    @Column(name = "topic", nullable = false, length = 255)
    private String topic;

    @Column(name = "content", columnDefinition = "TEXT")
    private String content;

    @Column(name = "year")
    private Integer year;

    @Column(name = "is_official")
    @Builder.Default
    private Boolean isOfficial = false;

    @Column(name = "source_url", length = 500)
    private String sourceUrl;

    @Column(name = "difficulty_level", length = 20)
    private String difficultyLevel;
}
