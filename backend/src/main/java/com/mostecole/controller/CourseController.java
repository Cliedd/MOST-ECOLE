package com.mostecole.controller;

import com.mostecole.dto.request.CreateCourseRequest;
import com.mostecole.dto.response.CourseResponse;
import com.mostecole.entity.*;
import com.mostecole.exception.ResourceNotFoundException;
import com.mostecole.repository.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/courses")
@RequiredArgsConstructor
@Tag(name = "Cours", description = "CRUD des cours pédagogiques")
public class CourseController {

    private final CourseRepository courseRepository;
    private final LevelRepository levelRepository;
    private final SubjectRepository subjectRepository;
    private final UserRepository userRepository;

    @GetMapping
    @Operation(summary = "Liste des cours publiés avec filtres optionnels")
    public ResponseEntity<List<CourseResponse>> getCourses(
            @RequestParam(required = false) Long levelId,
            @RequestParam(required = false) Long subjectId) {
        List<Course> courses = courseRepository.findPublishedWithFilters(levelId, subjectId);
        return ResponseEntity.ok(courses.stream().map(this::toResponse).toList());
    }

    @GetMapping("/{id}")
    @Operation(summary = "Détail d'un cours")
    public ResponseEntity<CourseResponse> getCourse(@PathVariable UUID id) {
        Course course = courseRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("Cours", "id", id));
        return ResponseEntity.ok(toResponse(course));
    }

    @PostMapping
    @PreAuthorize("hasAnyRole('TEACHER', 'ADMIN')")
    @Operation(summary = "Créer un nouveau cours")
    public ResponseEntity<CourseResponse> createCourse(
            @Valid @RequestBody CreateCourseRequest request,
            @AuthenticationPrincipal UserDetails userDetails) {

        Level level = levelRepository.findById(request.levelId())
            .orElseThrow(() -> new ResourceNotFoundException("Niveau", "id", request.levelId()));
        Subject subject = subjectRepository.findById(request.subjectId())
            .orElseThrow(() -> new ResourceNotFoundException("Matière", "id", request.subjectId()));
        User teacher = userRepository.findByEmail(userDetails.getUsername()).orElseThrow();

        Course course = Course.builder()
            .title(request.title())
            .description(request.description())
            .level(level)
            .subject(subject)
            .teacher(teacher)
            .contentType(request.contentType())
            .contentUrl(request.contentUrl())
            .contentText(request.contentText())
            .isPublished(request.isPublished() != null ? request.isPublished() : false)
            .build();

        Course saved = courseRepository.save(course);
        return ResponseEntity.status(HttpStatus.CREATED).body(toResponse(saved));
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasAnyRole('TEACHER', 'ADMIN')")
    @Operation(summary = "Modifier un cours")
    public ResponseEntity<CourseResponse> updateCourse(
            @PathVariable UUID id,
            @Valid @RequestBody CreateCourseRequest request) {
        Course course = courseRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("Cours", "id", id));

        course.setTitle(request.title());
        course.setDescription(request.description());
        course.setContentType(request.contentType());
        course.setContentUrl(request.contentUrl());
        course.setContentText(request.contentText());
        if (request.isPublished() != null) course.setIsPublished(request.isPublished());

        return ResponseEntity.ok(toResponse(courseRepository.save(course)));
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    @Operation(summary = "Supprimer un cours (admin uniquement)")
    public ResponseEntity<Void> deleteCourse(@PathVariable UUID id) {
        if (!courseRepository.existsById(id)) {
            throw new ResourceNotFoundException("Cours", "id", id);
        }
        courseRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    private CourseResponse toResponse(Course c) {
        String teacherName = c.getTeacher() != null
            ? c.getTeacher().getFirstName() + " " + c.getTeacher().getLastName()
            : null;
        return new CourseResponse(
            c.getId(), c.getTitle(), c.getDescription(),
            c.getSubject().getId(), c.getSubject().getName(),
            c.getLevel().getId(), c.getLevel().getLevelNumber(),
            teacherName, c.getContentType(), c.getContentUrl(),
            c.getContentText(), c.getIsPublished(), c.getCreatedAt()
        );
    }
}
