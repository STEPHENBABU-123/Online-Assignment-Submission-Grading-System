package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Faculty;
import java.util.List;

public interface FacultyService {
    List<Faculty> getAllFaculty();  // Method to fetch all faculty
    Faculty saveFaculty(Faculty faculty);  // Method to save or update a faculty member
    Faculty getFacultyById(int id);  // Method to get a faculty member by ID
    void deleteFaculty(int id);  // Method to delete a faculty member by ID
}
