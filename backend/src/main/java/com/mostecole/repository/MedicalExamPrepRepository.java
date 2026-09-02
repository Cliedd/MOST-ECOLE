package com.mostecole.repository;

import com.mostecole.entity.MedicalExamPrep;
import com.mostecole.entity.MedicalSubject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MedicalExamPrepRepository extends JpaRepository<MedicalExamPrep, Long> {
    List<MedicalExamPrep> findBySubject(MedicalSubject subject);
    List<MedicalExamPrep> findByIsOfficialTrue();
    List<MedicalExamPrep> findByYear(Integer year);
    List<MedicalExamPrep> findBySubjectOrderByYearDesc(MedicalSubject subject);
}
