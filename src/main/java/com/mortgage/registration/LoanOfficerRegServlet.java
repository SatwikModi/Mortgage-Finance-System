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
@WebServlet("/LoanOfficerRegister")
public class LoanOfficerRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String ufname = request.getParameter("firstname");
		String ulname = request.getParameter("lastname");
		String ugender = request.getParameter("gender");
		String uphone = request.getParameter("contact");
		String uemail = request.getParameter("email");
		String upan = request.getParameter("pan");
		String udesignation = request.getParameter("designation");
		String urole = request.getParameter("role");
		String userid = request.getParameter("userid");
		String upass = request.getParameter("pass");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mortgage?useSSL=false","root","pass123");
			PreparedStatement pst = con.prepareStatement("insert into loanOfficer(ufname,ulname,ugender,uphone,uemail,upan,udesignation,urole,userid,upass) values(?,?,?,?,?,?,?,?,?,?) ");
			pst.setString(1, ufname);
			pst.setString(2, ulname);
			pst.setString(3, ugender);
			pst.setString(4, uphone);
			pst.setString(5, uemail);
			pst.setString(6, upan);
			pst.setString(7, udesignation);
			pst.setString(8, urole);
			pst.setString(9, userid);
			pst.setString(10, upass);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("LoanOfficerReg.jsp");
			if (rowCount > 0) {
				request.setAttribute("status", "success");
			} else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(con != null) {
				con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
