package com.pratyush.jobreco;


import jakarta.servlet.ServletException;

import java.util.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.*;

//import org.apache.commons.lang3.ArrayUtils; 
import org.deeplearning4j.models.embeddings.loader.WordVectorSerializer;
import org.deeplearning4j.models.embeddings.wordvectors.WordVectors;


@WebServlet("/job-form")
public class JobformServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public JobformServlet() {
		super();
		new Databaseconnector();
	}

       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query = String.format("SELECT * FROM `tbl_job` ");
		Statement statement;
		
		String description =request.getParameter("desc");
		List<Job> jobList = new ArrayList<>();
		StringSimilarity calcSimilarity  = new StringSimilarity();
		
		
		try {
			statement = Databaseconnector.connection.prepareStatement(query);
			ResultSet rs = statement.executeQuery(query);
		     
			while(rs.next()) {
				int id=rs.getInt(1);
				String title = rs.getString(2);
				String desc = rs.getString(3);
				String post = rs.getString(4);
				String location = rs.getString(5);
				String company = rs.getString(6);
				String salary  = rs.getString(7);
				double similarity = calcSimilarity.calculateJaccardSimilarity(description, title);
				/* System.out.println(similarity); */
				List<Double> score=new ArrayList<>();
				


				 Job job = new Job();
				 	job.setId(rs.getInt(1));
	                job.setTitle(rs.getString(2));
	                job.setDesc(rs.getString(3));
	                job.setPost(rs.getString(4));
	                job.setLocation(rs.getString(5));
	                job.setCompany(rs.getString(6));
	                job.setSalary(rs.getString(7));
	                job.setSimilarityScore(similarity);
	                jobList.add(job);

}
			
			

		    request.setAttribute("jobList", jobList);

            // Forward the request to the JSP
		    request.getRequestDispatcher("/recommendedList.jsp").forward(request, response);
		

    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
