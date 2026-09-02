package com.mostecole.controller;

import com.mostecole.entity.MedicalExamPrep;
import com.mostecole.entity.MedicalSubject;
import com.mostecole.repository.MedicalExamPrepRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/medical-exam")
@RequiredArgsConstructor
@Tag(name = "Medical Exam Prep", description = "FWB medical entrance exam preparation resources")
@SecurityRequirement(name = "bearerAuth")
public class MedicalExamController {

    private final MedicalExamPrepRepository medicalExamRepository;

    @GetMapping
    @Operation(summary = "Get all medical exam preparation resources")
    public ResponseEntity<List<MedicalExamPrep>> getAll(
            @RequestParam(required = false) MedicalSubject subject,
            @RequestParam(required = false) Integer year,
            @RequestParam(required = false) Boolean officialOnly,
            @RequestParam(defaultValue = "0")  int page,
            @RequestParam(defaultValue = "20") int size) {

        var pageable = PageRequest.of(page, size, Sort.by("year").descending().and(Sort.by("topic")));

        if (subject != null && year != null) {
            return ResponseEntity.ok(
                medicalExamRepository.findBySubject(subject).stream()
                    .filter(r -> year.equals(r.getYear()))
                    .sorted(java.util.Comparator.comparing(com.mostecole.entity.MedicalExamPrep::getTopic))
                    .toList()
            );
        }
        if (subject != null) {
            return ResponseEntity.ok(medicalExamRepository.findBySubjectOrderByYearDesc(subject));
        }
        if (Boolean.TRUE.equals(officialOnly)) {
            return ResponseEntity.ok(medicalExamRepository.findByIsOfficialTrue());
        }
        return ResponseEntity.ok(medicalExamRepository.findAll(pageable).getContent());
    }

    @GetMapping("/subjects")
    @Operation(summary = "List available medical exam subjects")
    public ResponseEntity<MedicalSubject[]> getSubjects() {
        return ResponseEntity.ok(MedicalSubject.values());
    }

    @PostMapping
    @PreAuthorize("hasAnyRole('ADMIN','TEACHER')")
    @Operation(summary = "Add a medical exam resource")
    public ResponseEntity<MedicalExamPrep> create(@RequestBody MedicalExamPrep resource) {
        return ResponseEntity.status(201).body(medicalExamRepository.save(resource));
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    @Operation(summary = "Delete a medical exam resource")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        if (!medicalExamRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        medicalExamRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}
