package com.pratyush.jobreco;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/register-user") 
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RegisterServlet() {
        super();
        new Databaseconnector();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("number"); 
        HttpSession session = request.getSession();
        try {
            String query = String.format("SELECT * FROM `tbl_user` WHERE username = '%s';", username);
            Statement statement = Databaseconnector.connection.createStatement();
            ResultSet rs = statement.executeQuery(query);

            if (rs.next()) {
                request.setAttribute("status", "failed");
                request.getRequestDispatcher("/Register.jsp").forward(request, response);
            } else {
            	
                query = String.format("INSERT INTO `tbl_user` (username, email, password, phone) VALUES ('%s', '%s', '%s', '%s');", username, email, password, phone);
                System.out.print(query);
                statement.executeUpdate(query);
                
                session.setAttribute("usernam", username);
                response.sendRedirect("/Jobrecommendation/homepage.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
}
