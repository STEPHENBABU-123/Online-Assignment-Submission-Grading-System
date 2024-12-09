package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.repository.AssignmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AssignmentServiceImpl implements AssignmentService {

    @Autowired
    private AssignmentRepository assignmentRepository;

    @Override
    public void saveAssignment(Assignment assignment) {
        assignmentRepository.save(assignment);
    }

    @Override
    public Assignment getAssignmentById(int assignmentId) {
        return assignmentRepository.findById(assignmentId).orElse(null);
    }

    @Override
    public List<Assignment> getAssignmentsByStudentId(int studentId) {
        return assignmentRepository.findByStudentId(studentId);
    }
}
