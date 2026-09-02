package com.mostecole.controller;

import com.mostecole.entity.User;
import com.mostecole.entity.Role;
import com.mostecole.repository.CourseRepository;
import com.mostecole.repository.UserRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/api/admin")
@RequiredArgsConstructor
@PreAuthorize("hasRole('ADMIN')")
@Tag(name = "Admin", description = "Administration endpoints")
@SecurityRequirement(name = "bearerAuth")
public class AdminController {

    private final UserRepository   userRepository;
    private final CourseRepository courseRepository;

    @GetMapping("/statistics")
    @Operation(summary = "Platform-wide statistics")
    public ResponseEntity<Map<String, Object>> getStatistics() {
        Map<String, Object> stats = new HashMap<>();
        stats.put("totalUsers",    userRepository.count());
        stats.put("totalCourses",  courseRepository.count());
        stats.put("students",      userRepository.findByRole(Role.ROLE_STUDENT).size());
        stats.put("teachers",      userRepository.findByRole(Role.ROLE_TEACHER).size());
        stats.put("parents",       userRepository.findByRole(Role.ROLE_PARENT).size());
        stats.put("publishedCourses", courseRepository.findByIsPublishedTrue().size());
        return ResponseEntity.ok(stats);
    }

    @GetMapping("/users")
    @Operation(summary = "List all users")
    public ResponseEntity<List<User>> getAllUsers() {
        return ResponseEntity.ok(userRepository.findAll());
    }

    @GetMapping("/users/{id}")
    @Operation(summary = "Get user by ID")
    public ResponseEntity<User> getUserById(@PathVariable UUID id) {
        return userRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PatchMapping("/users/{id}/toggle-enabled")
    @Operation(summary = "Enable or disable a user account")
    public ResponseEntity<Map<String, Object>> toggleUserEnabled(@PathVariable UUID id) {
        return userRepository.findById(id).map((User user) -> {
            user.setEnabled(!user.isEnabled());
            userRepository.save(user);
            Map<String, Object> result = new HashMap<>();
            result.put("id", id);
            result.put("enabled", user.isEnabled());
            return ResponseEntity.ok(result);
        }).orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/users/{id}")
    @Operation(summary = "Delete a user")
    public ResponseEntity<Void> deleteUser(@PathVariable UUID id) {
        if (!userRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        userRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}
