package com.pratyush.jobreco;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;

@WebServlet("/listjob")
public class RecommendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RecommendServlet() {
        super();
        new Databaseconnector();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query = String.format("SELECT * FROM `tbl_job` ");
		Statement statement;
		
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer = response.getWriter();
		List<Job> jobList = new ArrayList<>();
	
		try {
			statement = Databaseconnector.connection.prepareStatement(query);
			ResultSet rs = statement.executeQuery(query);
		     
			while(rs.next()) {
				int Id=rs.getInt(1);
				String title = rs.getString(2);
				String desc = rs.getString(3);
				String post = rs.getString(4);
				String location = rs.getString(5);
				String company = rs.getString(6);
				String salary  = rs.getString(7);


				 Job job = new Job();
				 job.setId(rs.getInt(1));
	                job.setTitle(rs.getString(2));
	                job.setDesc(rs.getString(3));
	                job.setPost(rs.getString(4));
	                job.setLocation(rs.getString(5));
	                job.setCompany(rs.getString(6));
	                job.setSalary(rs.getString(7));
	                jobList.add(job);
}
			
			
			
		    request.setAttribute("jobList", jobList);

		    System.out.print("hello");

            // Forward the request to the JSP
		    request.getRequestDispatcher("/recommendedList.jsp").forward(request, response);
		

             writer.println("</div>");
         writer.println("</section>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
