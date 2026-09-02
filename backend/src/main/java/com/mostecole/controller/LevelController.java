package com.mostecole.controller;

import com.mostecole.dto.response.LevelResponse;
import com.mostecole.dto.response.SubjectResponse;
import com.mostecole.entity.Level;
import com.mostecole.entity.Subject;
import com.mostecole.exception.ResourceNotFoundException;
import com.mostecole.repository.LevelRepository;
import com.mostecole.repository.SubjectRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/levels")
@RequiredArgsConstructor
@Tag(name = "Niveaux & Matières", description = "Gestion des niveaux scolaires et matières")
public class LevelController {

    private final LevelRepository levelRepository;
    private final SubjectRepository subjectRepository;

    @GetMapping
    @Operation(summary = "Liste de tous les niveaux (1ère à 6ème secondaire)")
    public ResponseEntity<List<LevelResponse>> getAllLevels() {
        List<LevelResponse> levels = levelRepository.findAllByOrderByLevelNumberAsc()
            .stream()
            .map(this::toResponse)
            .toList();
        return ResponseEntity.ok(levels);
    }

    @GetMapping("/{id}")
    @Operation(summary = "Détail d'un niveau")
    public ResponseEntity<LevelResponse> getLevel(@PathVariable Long id) {
        Level level = levelRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("Niveau", "id", id));
        return ResponseEntity.ok(toResponse(level));
    }

    @GetMapping("/{id}/subjects")
    @Operation(summary = "Liste des matières pour un niveau donné")
    public ResponseEntity<List<SubjectResponse>> getSubjectsByLevel(@PathVariable Long id) {
        if (!levelRepository.existsById(id)) {
            throw new ResourceNotFoundException("Niveau", "id", id);
        }
        List<SubjectResponse> subjects = subjectRepository.findByLevelIdOrderByNameAsc(id)
            .stream()
            .map(this::toSubjectResponse)
            .toList();
        return ResponseEntity.ok(subjects);
    }

    private LevelResponse toResponse(Level level) {
        return new LevelResponse(
            level.getId(),
            level.getLevelNumber(),
            level.getDegreeName(),
            level.getDisplayName(),
            level.getDescription()
        );
    }

    private SubjectResponse toSubjectResponse(Subject subject) {
        return new SubjectResponse(
            subject.getId(),
            subject.getName(),
            subject.getDescription(),
            subject.getLevel().getId(),
            subject.getLevel().getLevelNumber()
        );
    }
}
