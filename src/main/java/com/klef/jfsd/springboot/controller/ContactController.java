package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.klef.jfsd.springboot.model.ContactForm;

import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class ContactController {

    @GetMapping("/contact")
    public String showContactForm(Model model) {
        model.addAttribute("contactForm", new ContactForm());
        return "contact"; // Returns contact.jsp where the form is displayed
    }

    @PostMapping("/submitContactForm")
    public String submitContactForm(@ModelAttribute ContactForm contactForm, Model model) {
        // No database save here, just process the form and add a success message
        String name = contactForm.getName();
        String email = contactForm.getEmail();
        String message = contactForm.getMessage();

        // Optionally, you can log or send the message via email here (e.g., using JavaMail)

        // Add a success message to the model
        model.addAttribute("message", "Thank you, " + name + ". Your message has been sent successfully!");

        // Redirect to the success page
        return "submitContactForm"; // This returns submitContactForm.jsp
    }
}
