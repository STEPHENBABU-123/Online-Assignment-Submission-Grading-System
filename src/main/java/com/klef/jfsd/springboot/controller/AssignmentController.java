package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Assignment;
import com.klef.jfsd.springboot.service.AssignmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.sql.Timestamp;

@Controller
@RequestMapping("/assignments")
public class AssignmentController {

    @Autowired
    private AssignmentService assignmentService;

    // Show form to submit an assignment
    @GetMapping("/submit/{studentId}")
    public String showSubmitAssignmentPage(@PathVariable("studentId") int studentId, Model model) {
        model.addAttribute("studentId", studentId);
        return "submitAssignment"; // JSP page for submission
    }
    @PostMapping("/submitAssignment")
    public String submitAssignment(@ModelAttribute Assignment assignment, Model model) {
        // Save assignment to database (mock or real)
        // Add assignment details to the model
        model.addAttribute("assignment", assignment);
        return "assignmentSubmissionSuccess";
    }


    // Handle assignment submission
    @PostMapping("/submit")
    public String submitAssignment(
            @RequestParam("file") MultipartFile file,
            @RequestParam("studentId") int studentId,
            @RequestParam("fileName") String fileName,
            @RequestParam("comments") String comments,
            Model model) {

        if (file.isEmpty()) {
            model.addAttribute("error", "File upload is required!");
            return "submitAssignment";
        }

        try {
            Assignment assignment = new Assignment();
            assignment.setStudentId(studentId);
            assignment.setFileName(fileName);
            assignment.setFileData(file.getBytes()); // Store file as BLOB
            assignment.setComments(comments);
            assignment.setSubmissionDate(new Timestamp(System.currentTimeMillis()));

            assignmentService.saveAssignment(assignment);

            model.addAttribute("message", "Assignment submitted successfully!");

        } catch (IOException e) {
            e.printStackTrace();
            model.addAttribute("error", "Failed to upload file. Please try again!");
        }

        return "submitAssignment"; // Redirect to the same page with status
    }
}
