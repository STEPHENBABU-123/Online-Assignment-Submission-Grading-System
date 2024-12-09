package com.klef.jfsd.springboot.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.FAssignment;
import com.klef.jfsd.springboot.repository.FAssignmentRepository;

import java.util.List;

@Service
public class FAssignmentService {

    @Autowired
    private FAssignmentRepository fAssignmentRepository;

    public FAssignment createFAssignment(FAssignment fAssignment) {
        return fAssignmentRepository.save(fAssignment);
    }

    public List<FAssignment> getAllFAssignments() {
        return fAssignmentRepository.findAll();
    }
}
