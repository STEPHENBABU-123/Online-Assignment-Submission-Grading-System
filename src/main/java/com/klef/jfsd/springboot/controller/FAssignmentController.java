package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.klef.jfsd.springboot.model.FAssignment;
import com.klef.jfsd.springboot.service.FAssignmentService;

import java.time.LocalDate;
import java.util.List;

@Controller
public class FAssignmentController {

    @Autowired
    private FAssignmentService fAssignmentService;

    // Handle form submission for creating assignments
    @PostMapping("/submitAssignment")
    public String createFAssignment(
            @RequestParam String title,
            @RequestParam String description,
            @RequestParam String dueDate,
            @RequestParam String createdBy,
            Model model) {

        FAssignment fAssignment = new FAssignment();
        fAssignment.setTitle(title);
        fAssignment.setDescription(description);
        fAssignment.setDueDate(LocalDate.parse(dueDate));
        fAssignment.setCreatedBy(createdBy);

        // Save the assignment
        fAssignmentService.createFAssignment(fAssignment);

        // Add the created assignment to the model for the success page
        model.addAttribute("fAssignment", fAssignment);

        // Redirect to the success page
        return "fAssignmentSuccess"; // This refers to `fAssignmentSuccess.jsp`
    }

    // Display list of all assignments
    @GetMapping("/viewAssignments")
    public String viewAssignments(Model model) {
        List<FAssignment> assignments = fAssignmentService.getAllFAssignments();
        model.addAttribute("assignments", assignments);
        return "viewAssignments"; // This refers to `viewAssignments.jsp`
    }
}
