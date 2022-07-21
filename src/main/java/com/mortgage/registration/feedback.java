package com.mortgage.registration;

import java.io.IOException;
import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/feedback")
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String feedback = request.getParameter("feedback");

		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mortgage?useSSL=false","root","pass123");
			PreparedStatement pst =con.prepareStatement("insert into feedbackform(feedback) values(?) ");
			pst.setString(1,feedback);
			
				
				int rowCount =pst.executeUpdate();
			    dispatcher = request.getRequestDispatcher("feedback.jsp");
				if(rowCount>0) {
					request.setAttribute("status","success");
					
				}else {
					request.setAttribute("status","failed");
				}
		
		dispatcher.forward(request,  response);
	}catch (Exception e) {
					e.printStackTrace();
				}finally {
					
					try {
						if(con!=null) {
					
					con.close();
						}
				}
					
					catch(SQLException e) {
					//TODO Auto-generated catch block
						e.printStackTrace();
				}
	}
}
}