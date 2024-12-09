package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;

@Entity
public class Assignment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    private int studentId;

    @Column(nullable = false)
    private String fileName;

    @Lob
    @Column(nullable = false)
    private byte[] fileData;

    private String comments;

    private java.sql.Timestamp submissionDate;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public byte[] getFileData() {
        return fileData;
    }

    public void setFileData(byte[] fileData) {
        this.fileData = fileData;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public java.sql.Timestamp getSubmissionDate() {
        return submissionDate;
    }

    public void setSubmissionDate(java.sql.Timestamp submissionDate) {
        this.submissionDate = submissionDate;
    }
}
