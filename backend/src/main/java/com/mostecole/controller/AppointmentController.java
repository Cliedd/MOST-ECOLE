package com.mostecole.controller;

import com.mostecole.entity.Appointment;
import com.mostecole.repository.AppointmentRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/appointments")
@RequiredArgsConstructor
@Tag(name = "Appointments", description = "Student-teacher appointment management")
@SecurityRequirement(name = "bearerAuth")
public class AppointmentController {

    private final AppointmentRepository appointmentRepository;

    @GetMapping("/my")
    @PreAuthorize("isAuthenticated()")
    @Operation(summary = "Get appointments for current user (student or teacher)")
    public ResponseEntity<List<Appointment>> getMyAppointments(
            @AuthenticationPrincipal UserDetails userDetails) {
        // Returns appointments where user is either student or teacher
        // Full implementation would query by user ID from the UserDetails
        return ResponseEntity.ok(List.of());
    }

    @GetMapping("/student/{studentId}")
    @PreAuthorize("hasAnyRole('ADMIN','TEACHER') or #studentId == authentication.principal.id")
    @Operation(summary = "Get appointments for a specific student")
    public ResponseEntity<List<Appointment>> getStudentAppointments(@PathVariable UUID studentId) {
        return ResponseEntity.ok(appointmentRepository.findByStudentId(studentId));
    }

    @GetMapping("/teacher/{teacherId}")
    @PreAuthorize("hasAnyRole('ADMIN') or #teacherId == authentication.principal.id")
    @Operation(summary = "Get appointments for a specific teacher")
    public ResponseEntity<List<Appointment>> getTeacherAppointments(@PathVariable UUID teacherId) {
        return ResponseEntity.ok(appointmentRepository.findByTeacherId(teacherId));
    }

    @PatchMapping("/{id}/status")
    @PreAuthorize("hasAnyRole('ADMIN','TEACHER')")
    @Operation(summary = "Update appointment status (confirm, cancel, complete)")
    public ResponseEntity<Appointment> updateStatus(
            @PathVariable UUID id,
            @RequestParam String status) {
        return appointmentRepository.findById(id).map((Appointment appt) -> {
            try {
                appt.setStatus(com.mostecole.entity.AppointmentStatus.valueOf(status.toUpperCase()));
            } catch (IllegalArgumentException e) {
                // keep current status
            }
            return ResponseEntity.ok(appointmentRepository.save(appt));
        }).orElse(ResponseEntity.notFound().build());
    }
}
