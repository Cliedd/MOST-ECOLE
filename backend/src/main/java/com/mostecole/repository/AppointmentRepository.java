package com.mostecole.repository;

import com.mostecole.entity.Appointment;
import com.mostecole.entity.AppointmentStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment, UUID> {
    List<Appointment> findByStudentId(UUID studentId);
    List<Appointment> findByTeacherId(UUID teacherId);
    List<Appointment> findByStatus(AppointmentStatus status);
    List<Appointment> findByScheduledAtBetween(LocalDateTime start, LocalDateTime end);
}
