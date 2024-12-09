package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Assignment;

import java.util.List;

@Repository
public interface AssignmentRepository extends JpaRepository<Assignment, Integer> {
    List<Assignment> findByStudentId(int studentId);
}
