<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Loan Application Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<input type = "hidden" id="status" value="<%= request.getAttribute("status")%>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Apply Loan</h2>
					
						<form method="post" action="ApplyLoan" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" 
									placeholder="Full Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="address"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="textarea" name="address" id="address" 
									placeholder="Full Address" required="required"/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" required="required"/>
							</div>
							<div class="form-group" style="margin-bottom: 0px">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Email" required="required"/>
							</div>
							<div class="form-group" style="margin-bottom: 0px">
								<label for="resume"><i class="zmdi zmdi-email"></i> Resume</label> <br> <br> <br> <input
									type="file" name="resume" id="resume" placeholder="Resume" required="required"/>
							</div>
							<div class="form-group" style="margin-bottom: 0px">
								<label for="projectplan"><i class="zmdi zmdi-email"></i> Project Plan</label> <br> <br> <br> <input
									type="file" name="projectplan" id="projectplan" placeholder="Project Plan" required="required"/>
							</div>
							<div class="form-group" style="margin-bottom: 0px">
								<label for="personalcredit"><i class="zmdi zmdi-email"></i> Personal Credit Report</label> <br> <br> <br> <input
									type="file" name="personalcredit" id="personalcredit" placeholder="Personal Credit Report" required="required"/>
							</div>
							<div class="form-group" style="margin-bottom: 0px">
								<label for="businesscredit"><i class="zmdi zmdi-email"></i> Business Credit Report</label> <br> <br> <br> <input
									type="file" name="businesscredit" id="businesscredit" placeholder="Business Credit Report" required="required"/>
							</div>
							<div class="form-group" style="margin-bottom: 0px">
								<label for="financial"><i class="zmdi zmdi-email"></i> Financial Statement</label> <br> <br> <br> <input
									type="file" name="financial" id="financial" placeholder="Financial Statement" required="required"/>
							</div>
							<div class="form-group">
								<label for="bankstatement"><i class="zmdi zmdi-email"></i> Bank Statement</label> <br> <br> <br> <input
									type="file" name="bankstatement" id="bankstatement" placeholder="Bank Statement" required="required"/>
							</div>
							<div class="form-group">
								<label for="mortitem"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="mortitem" id="mortitem" placeholder="Mortgage Item" required="required"/>
							</div>
							<div class="form-group">
								<label for="mortitemvalue"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="number" name="mortitemvalue" id="mortitemvalue" placeholder="Value of the Mortgaged Item" required="required"/>
							</div>
							<div class="form-group">
								<label for="loanamount"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="number" name="loanamount" id="loanamount" placeholder="Loan Amount" required="required"/>
							</div>
							<div class="form-group">
								<label for="loantenure"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="number" name="loantenure" id="loantenure" placeholder="Loan Tenure (in Years)" required="required"/>
							</div>
							<div class="form-group">
								<label for="interestrate"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="number" name="interestrate" id="interestrate" placeholder="Interest Rate" required="required"/>
							</div>
							<div class="form-group">
								<label for="emioption"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<select name="emioption" id="emioption" required="required">
					                    <option value="">EMI Options</option>
					                    <option value="creditcard">Credit Card</option>
					                    <option value="debitcard">Debit Card</option>
					                    <option value="cash">Cash</option>
					                </select>
							</div>
							<div class="form-group">
								<label for="emiday"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<select name="emiday" id="emiday" required="required">
					                    <option value="">Day of EMI Payment</option>
					                    <option value="5th">5th of every month</option>
					                    <option value="15th">15th of every month</option>
					                    <option value="25th">25th of every month</option>
					                </select>
							</div>
							<div class="form-group">
                            	<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" checked /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
									of service</a></label>
							 </div>
							<div class="form-group form-button">
								<input type="submit" name="apply" id="apply"
									class="form-submit" value="Apply Loan" />
							</div>
						</form>
						<p><a href="http://localhost:8080/official/LoanOfficerLoggedin.jsp">Loan Officer Home</a></p>
					</div>
					</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status == "success"){
			swal("Your details are submitted successfully.","success");
		}
	</script>



</body>
</html>