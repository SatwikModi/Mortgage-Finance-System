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
@WebServlet("/register")
public class CustomerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String ugender = request.getParameter("gender");
		String uemail = request.getParameter("email"); 
		String umobile= request.getParameter("contact");
		String userid = request.getParameter("user_ID");
		String upass = request.getParameter("pass");
		String secret = request.getParameter("secret");
		String ans = request.getParameter("ans");
		RequestDispatcher dispatcher = null;
		Connection con=null;
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mortgage?useSSL=false","root","pass123");
			PreparedStatement pst =con.prepareStatement("insert into customer(fName,lName,ugender,uemail,umobile,userid,upass,secret,ans) values(?,?,?,?,?,?,?,?,?) ");
				pst.setString(1,fName);
				pst.setString(2,lName);
				pst.setString(3,ugender);
				pst.setString(4,uemail);
				pst.setString(5,umobile);
				pst.setString(6,userid);
				pst.setString(7,upass);
				pst.setString(8, secret);
				pst.setString(9,ans);
				
				int rowCount =pst.executeUpdate();
			    dispatcher = request.getRequestDispatcher("CustomerRegistration.jsp");
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