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
@WebServlet("/login")
public class CustomerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid =request.getParameter("userid");
		String upass =request.getParameter("pass");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mortgage?useSSL=false","root","pass123");
			PreparedStatement pst =con.prepareStatement("select * from customer where userid = ? and upass=?");
			pst.setString(1,userid);
			pst.setString(2, upass);
			
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("fName"));
				 dispatcher =request.getRequestDispatcher("CustomerLoggedin.jsp");
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher= request.getRequestDispatcher("CustomerLogin.jsp");
			}
			dispatcher.forward(request,response);
		}catch(Exception e) {
			
			e.printStackTrace(); 

			
		}
	}

}
