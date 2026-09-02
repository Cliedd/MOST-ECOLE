package com.mostecole.repository;

import com.mostecole.entity.CurriculumExpectation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CurriculumExpectationRepository extends JpaRepository<CurriculumExpectation, Long> {
    List<CurriculumExpectation> findBySubjectId(Long subjectId);
    List<CurriculumExpectation> findByLevelId(Long levelId);
    List<CurriculumExpectation> findBySubjectIdAndLevelId(Long subjectId, Long levelId);
}
