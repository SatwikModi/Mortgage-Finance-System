<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Loan Officer Sign Up</title>

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
			<h1 align="center">Loan Officer</h1>
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="LoanOfficerRegister" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="firstname"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="firstname" id="firstname" 
									placeholder="Your First Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="lastname"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="lastname" id="lastname" 
									placeholder="Your Last Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="gender"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<select name="gender" id="gender" required="required">
					                    <option value="">Gender</option>
					                    <option value="male">Male</option>
					                    <option value="female">Female</option>
					                    <option value="other">Other</option>
					                </select>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" required="required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required="required"/>
							</div>
							<div class="form-group">
								<label for="pan"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="pan" id="pan"
									placeholder="PAN" required="required"/>
							</div>
							<div class="form-group">
								<label for="designation"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<select name="designation" id="designation" required="required">
					                    <option value="">Designation</option>
					                    <option value="junior-officer">Junior Officer</option>
					                    <option value="officer">Officer</option>
					                    <option value="senior-officer">Senior Officer</option>
					                    <option value="manager">Manager</option>
					                    <option value="divisional-manager">Divisional Manager</option>
					                </select>
							</div>
							<div class="form-group">
								<label for="role"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<select name="role" id="role" required="required">
					                    <option value="">Role</option>
					                    <option value="processing-officer">Processing Officer</option>
					                    <option value="internal-auditor">Internal Auditor</option>
					                    <option value="marketing-rep">Marketing Representative</option>
					                    <option value="verification-officer">Verification Officer</option>
					                </select>
							</div>
							<div class="form-group">
								<label for="userid"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="userid" id="userid" 
									placeholder="User ID" required="required"/>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" required="required"/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required="required"/>
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" required="required" checked/> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="LoanOfficerLogin.jsp" class="signup-image-link">I am already
							member</a>
						<p><a href="http://localhost:8080/official/HomePage.jsp" class="signup-image-link">Home</a></p>
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
			swal("New user created successfully.","Success");
		}
	</script>



</body>
</html>