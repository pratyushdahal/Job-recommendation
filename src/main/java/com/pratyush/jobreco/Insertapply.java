package com.pratyush.jobreco;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
@WebServlet("/insert")
public class Insertapply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Insertapply() {
        new Databaseconnector();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String jobname = request.getParameter("title"); 
		 String jobtype = request.getParameter("desc");		
		 String query = String.format("insert into tbl_apply ( name ,type) Values( '?','?')");
		  
		 
		try {
			PreparedStatement statement = Databaseconnector.connection.prepareStatement("insert into tbl_apply ( name ,type) Values( '?','?')");
			statement.setString(1,jobname);
			statement.setString(2, jobtype);
			statement.executeUpdate();
			
			int rowCount=0;
			
			if(rowCount>0) {
				System.out.println("successfully applied job");
			}else {
				System.out.println("job not applied");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
