package com.mostecole.repository;

import com.mostecole.entity.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface CourseRepository extends JpaRepository<Course, UUID> {

    List<Course> findByIsPublishedTrue();

    List<Course> findByLevelId(Long levelId);

    List<Course> findBySubjectId(Long subjectId);

    List<Course> findByLevelIdAndSubjectId(Long levelId, Long subjectId);

    @Query("SELECT c FROM Course c WHERE c.isPublished = true " +
           "AND (:levelId IS NULL OR c.level.id = :levelId) " +
           "AND (:subjectId IS NULL OR c.subject.id = :subjectId)")
    List<Course> findPublishedWithFilters(
        @Param("levelId") Long levelId,
        @Param("subjectId") Long subjectId
    );

    List<Course> findByTeacherIdOrderByCreatedAtDesc(UUID teacherId);
}
