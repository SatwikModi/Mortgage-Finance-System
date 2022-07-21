package com.mortgage.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mortgage?useSSL=false","root","pass123");
			PreparedStatement pst =con.prepareStatement("select * from admin1 where username = ? and password=?");
			pst.setString(1,username);
			pst.setString(2,password);
			
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("username"));
				 dispatcher =request.getRequestDispatcher("AdminLoggedin.jsp");
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher= request.getRequestDispatcher("Adminlogin.jsp");
			}
			dispatcher.forward(request,response);
		}catch(Exception e) {
			
			e.printStackTrace(); 

			
		}
	}

}
