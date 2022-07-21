<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("LoanOfficerLogin.jsp");
	}
%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Officer</title>
</head>

<style>
    body{
        background-color: #F0F8FF;
    }
    div{
        display: flex;
        flex-direction: column;
        text-align: center;
        background-color: #3BACB6;
        margin: auto;
        border-radius: 20px;
        height: 500px;
        width: 800px;
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
    }
    h1{
        color: white;
        margin: 50px 0 30px;
        font-size: xxx-large;
    }
    p{
        font-size: large;
        font-weight: bold;
        margin: 12px 0 12px;
    }
    h2, h3{
        font-size: x-large;
        margin: 12px;
    }
</style>

<body>
    <div>
        <h1>Mortgage Finance System</h1>
       <h2><%   
  
String name=(String)session.getAttribute("name");  
out.print("Hello "+name);  
  
%> </h2>
        <h3>We wish you a great adventure.</h3>
    
        
        <p><a href="http://localhost:8080/official/viewMortagageItems.jsp">View Mortgage Items</a></p>
        
        <p><a href="http://localhost:8080/official/applyloan.jsp">Apply Loan</a></p>
         
        <p><a href="http://localhost:8080/official/calculator.jsp">EMI Calculator</a></p>
        
        <p><a href="LoanOfficerLogout">Log Out </a></p>
        
        <p><a href="http://localhost:8080/official/HomePage.jsp">Home</a></p>
    </div>    
</body>
</html>

