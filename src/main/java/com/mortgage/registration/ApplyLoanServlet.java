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
@WebServlet("/ApplyLoan")
public class ApplyLoanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String uname = request.getParameter("name");
		String uaddress = request.getParameter("address");
		String uphone = request.getParameter("contact");
		String uemail = request.getParameter("email");
		String umortitem = request.getParameter("mortitemvalue");
		String uloanamount = request.getParameter("loanamount");
		String uloantenure = request.getParameter("loantenure");
		String uinterestrate = request.getParameter("interestrate");
		String uemioption = request.getParameter("emioption");
		String uemiday = request.getParameter("emiday");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mortgage?useSSL=false","root","pass123");
			PreparedStatement pst = con.prepareStatement("insert into applyloan(uname,uaddress,uphone,uemail,umortitem,uloanamount,uloantenure,uinterestrate,uemioption,uemiday) values(?,?,?,?,?,?,?,?,?,?) ");
			pst.setString(1, uname);
			pst.setString(2, uaddress);
			pst.setString(3, uphone);
			pst.setString(4, uemail);
			pst.setString(5, umortitem);
			pst.setString(6, uloanamount);
			pst.setString(7, uloantenure);
			pst.setString(8, uinterestrate);
			pst.setString(9, uemioption);
			pst.setString(10, uemiday);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("applyloan.jsp");
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
