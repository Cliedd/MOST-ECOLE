package com.mostecole.controller;

import com.mostecole.repository.CourseProgressRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/api/progress")
@RequiredArgsConstructor
@Tag(name = "Student Progress", description = "Course progress tracking")
@SecurityRequirement(name = "bearerAuth")
public class StudentProgressController {

    private final CourseProgressRepository progressRepository;

    @GetMapping("/student/{studentId}")
    @PreAuthorize("hasAnyRole('ADMIN','TEACHER') or #studentId.toString() == authentication.name")
    @Operation(summary = "Get all progress records for a student")
    public ResponseEntity<?> getStudentProgress(@PathVariable UUID studentId) {
        return ResponseEntity.ok(progressRepository.findByStudentId(studentId));
    }

    @GetMapping("/student/{studentId}/summary")
    @PreAuthorize("hasAnyRole('ADMIN','TEACHER') or #studentId.toString() == authentication.name")
    @Operation(summary = "Get progress summary (average, completed count) for a student")
    public ResponseEntity<Map<String, Object>> getProgressSummary(@PathVariable UUID studentId) {
        Double avg       = progressRepository.findAverageProgressByStudentId(studentId);
        long   completed = progressRepository.countByStudentIdAndCompletedTrue(studentId);
        long   total     = progressRepository.findByStudentId(studentId).size();

        Map<String, Object> summary = new HashMap<>();
        summary.put("averageProgress", avg != null ? Math.round(avg) : 0);
        summary.put("completedCourses", completed);
        summary.put("totalCourses",    total);
        summary.put("inProgressCourses", total - completed);
        return ResponseEntity.ok(summary);
    }

    @PutMapping("/student/{studentId}/course/{courseId}")
    @PreAuthorize("hasAnyRole('ADMIN') or #studentId.toString() == authentication.name")
    @Operation(summary = "Update progress for a specific course")
    public ResponseEntity<?> updateProgress(
            @PathVariable UUID studentId,
            @PathVariable UUID courseId,
            @RequestParam int progressPercentage) {
        return progressRepository.findByStudentIdAndCourseId(studentId, courseId)
                .map((progress) -> {
                    progress.setProgressPercentage(Math.min(100, Math.max(0, progressPercentage)));
                    progress.setCompleted(progressPercentage >= 100);
                    progress.setLastAccessed(java.time.LocalDateTime.now());
                    return ResponseEntity.ok(progressRepository.save(progress));
                })
                .orElse(ResponseEntity.notFound().build());
    }
}
