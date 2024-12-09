package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.springboot.model.Admin1;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.Adminservice;
import com.klef.jfsd.springboot.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class Admincontroller {

    @Autowired
    private Adminservice adminservice;
    
    @Autowired
    private FacultyService facultyService;  // Add FacultyService for fetching faculty data
    
    // Method for Admin Login page
    @GetMapping("Adminlogin")
    public ModelAndView Adminlogin() {
        ModelAndView mv = new ModelAndView("Adminlogin");
        return mv;
    }
    
    // Method for Admin login check
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");
        
        Admin1 admin = adminservice.checkAdminLogin(auname, apwd);
        
        if(admin != null) {
            mv.setViewName("adminhome");  // login success
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }
    
    // Method for viewing all students
    @GetMapping("viewallstudents")
    public ModelAndView viewallstudents() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallstudents");
        
        List<Student> students = adminservice.viewAllStudents();
        
        mv.addObject("studentlist", students);
        
        return mv;
    }

    // Method for faculty registration page
    @GetMapping("facultyreg")
    public ModelAndView facultyreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultyreg");
        return mv;
    }

    // Method for inserting faculty into the database
    @PostMapping("insertfaculty")
    public ModelAndView insertfaculty(HttpServletRequest request) {
        String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String email = request.getParameter("femail");
        String password = request.getParameter("fpwd");
        String department = request.getParameter("fdept");
        
        Faculty faculty = new Faculty();
        faculty.setName(name);
        faculty.setGender(gender);
        faculty.setEmail(email);
        faculty.setPassword(password);
        faculty.setDepartment(department);
        
        String message = adminservice.FacultyRegistration(faculty);
        
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultyregsuccess");
        mv.addObject("message", message);
        
        return mv;
    }

    // Method for faculty login page
    @GetMapping("facultylogin")
    public ModelAndView facultylogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("facultylogin");
        return mv;
    }

    // Method for checking faculty login credentials
    @PostMapping("checkfacultylogin")
    public ModelAndView checkfacultylogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        String semail = request.getParameter("femail");
        String spwd = request.getParameter("fpwd");
        
        Faculty faculty = adminservice.checkFacultyLogin(semail, spwd);
        
        if(faculty != null) {
            HttpSession session = request.getSession();
            session.setAttribute("faculty", faculty);  // Set faculty object in session
            
            mv.setViewName("facultydashboard");  // login success
        } else {
            mv.setViewName("facultylogin");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    // Method to view all faculty members
    @GetMapping("viewallfaculty")
    public ModelAndView viewAllFaculty() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallfaculty");  // Set the view name for the JSP page
        
        // Fetch the list of all faculty members
        List<Faculty> facultyList = facultyService.getAllFaculty();  // Assuming FacultyService has the getAllFaculty method
        mv.addObject("facultyList", facultyList);  // Add the list to the model
        
        return mv;
    }
}
