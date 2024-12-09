package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Assignment;

import java.util.List;

public interface AssignmentService {
    void saveAssignment(Assignment assignment);
    Assignment getAssignmentById(int assignmentId);
    List<Assignment> getAssignmentsByStudentId(int studentId);
}
