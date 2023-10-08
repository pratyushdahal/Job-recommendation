package com.pratyush.jobreco;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/applyjob")
public class ApplyJob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ApplyJob() {
        super();
        new Databaseconnector();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // Retrieve the job ID from the request parameter
        String jobId = request.getParameter("jobId");
        
        // Assuming you have a method to retrieve the Job by its ID
        Job selectedJob = Job.getJobById(Integer.parseInt(jobId));
        
        // Set the selectedJob in the session
        HttpSession session = request.getSession();
        session.setAttribute("selectedJob", selectedJob);
        
        // Redirect to the Apply Job Form JSP page
        response.sendRedirect("applyJobForm.jsp");
	
	}

}
