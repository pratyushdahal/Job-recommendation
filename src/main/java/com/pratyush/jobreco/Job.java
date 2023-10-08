package com.pratyush.jobreco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Job {
	private int id;
    private String title;
    private String desc;
    private String post;
     private String location;
    private String company;
     private String salary;
     private double similarityScore;

    // Default constructor
    public Job() {
    	new Databaseconnector();
    }
    public static Job getJobById(int jobId) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Job job = null;

        try {
            // Define the SQL query to retrieve the job by ID
            String sql = "SELECT j_id, title, description FROM tbl_job WHERE j_id = ?";

            // Create a PreparedStatement to execute the query
            stmt =  Databaseconnector.connection.prepareStatement(sql);
            stmt.setInt(1, jobId);

            // Execute the query
            rs = stmt.executeQuery();

            // Check if a job with the given ID was found
            if (rs.next()) {
                // Populate the job object with data from the database
                job = new Job();
                job.setId(rs.getInt("j_id"));
                job.setTitle(rs.getString("title"));
                job.setDesc(rs.getString("description"));
            }
        } catch ( SQLException e) {
            e.printStackTrace();}
            // Handle any exceptions that occur during database access
        if(job == null) {
        	return new Job();
        }
		return job;
        }

    // Getters and setters for all fields
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getSalary() {
        return salary;
    }
    public void setSimilarityScore(double similarityScore)
    {
    	
    	this.similarityScore = similarityScore;
    }
    public double getSimilarityScore() {
    	
    	return this.similarityScore;
    }
    public void setSalary(String salary) {
        this.salary = salary;
    }
}
