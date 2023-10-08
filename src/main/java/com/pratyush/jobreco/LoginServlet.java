package com.pratyush.jobreco;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/login-user")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
		new Databaseconnector();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String username = request.getParameter("txtUsername");
		String password = request.getParameter("txtPassword");

		HttpSession session = request.getSession();
		try {
			if (username.trim().isEmpty() || password.isEmpty()) {
				request.setAttribute("status", "Please enter both username and password.");
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
			} else {
				String query = String.format("SELECT * FROM `tbl_user` WHERE username = '%s' AND password = '%s';",
						username, password);
				Statement statement = Databaseconnector.connection.prepareStatement(query);
				ResultSet rs = statement.executeQuery(query);
				if (rs.next()) {
					session.setAttribute("username", rs.getString("username"));
					response.sendRedirect("/Jobrecommendation/homepage.jsp");
				} else {
					request.setAttribute("status", "Invalid username or password. Please try again.");
					RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
					rd.forward(request, response);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
