package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.repository.FacultyRepository;

import java.util.List;

@Service  // Make sure the class is annotated as a Service
public class FacultyServiceImpl implements FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;

    // Implement the method to fetch all faculty members
    @Override
    public List<Faculty> getAllFaculty() {
        return facultyRepository.findAll();  // This fetches all faculty records from the database
    }

    // Implement any other faculty-related methods you need, for example, creating or updating a faculty member
    @Override
    public Faculty saveFaculty(Faculty faculty) {
        return facultyRepository.save(faculty);  // Save or update the faculty record
    }

    @Override
    public Faculty getFacultyById(int id) {
        return facultyRepository.findById(id).orElse(null);  // Fetch a faculty by their ID
    }

    @Override
    public void deleteFaculty(int id) {
        facultyRepository.deleteById(id);  // Delete faculty by their ID
    }
}
