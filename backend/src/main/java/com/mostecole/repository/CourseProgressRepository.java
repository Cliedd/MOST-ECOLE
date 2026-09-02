package com.mostecole.repository;

import com.mostecole.entity.CourseProgress;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface CourseProgressRepository extends JpaRepository<CourseProgress, Long> {

    List<CourseProgress> findByStudentId(UUID studentId);

    Optional<CourseProgress> findByStudentIdAndCourseId(UUID studentId, UUID courseId);

    @Query("SELECT AVG(cp.progressPercentage) FROM CourseProgress cp WHERE cp.student.id = :studentId")
    Double findAverageProgressByStudentId(@Param("studentId") UUID studentId);

    long countByStudentIdAndCompletedTrue(UUID studentId);
}
