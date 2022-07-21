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

/**
 * 
 * Servlet implementation class login
 */
@WebServlet("/reset")
public class ForgetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid =request.getParameter("userid");
		String secret =request.getParameter("secret");
		String ans =request.getParameter("ans");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mortgage?useSSL=false","root","pass123");
			PreparedStatement pst =con.prepareStatement("select * from customer where userid = ? and secret = ? and ans = ?");
			pst.setString(1,userid);
			pst.setString(2, secret);
			pst.setString(3, ans);
			
			
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", userid);
				 dispatcher =request.getRequestDispatcher("resetPassword.jsp");
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher= request.getRequestDispatcher("forgotPassword.jsp");
			}
			dispatcher.forward(request,response);
		}catch(Exception e) {
			
			e.printStackTrace(); 

			
		}
	}

}
