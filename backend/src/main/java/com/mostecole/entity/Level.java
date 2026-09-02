package com.mostecole.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "levels")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Level {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "level_number", nullable = false, unique = true)
    private Integer levelNumber;

    @Column(name = "degree_name", nullable = false, length = 100)
    private String degreeName;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @OneToMany(mappedBy = "level", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Subject> subjects;

    public String getDisplayName() {
        return switch (levelNumber) {
            case 1 -> "1ère secondaire";
            case 2 -> "2ème secondaire";
            case 3 -> "3ème secondaire";
            case 4 -> "4ème secondaire";
            case 5 -> "5ème secondaire";
            case 6 -> "6ème secondaire (Rhéto)";
            default -> levelNumber + "ème secondaire";
        };
    }
}
