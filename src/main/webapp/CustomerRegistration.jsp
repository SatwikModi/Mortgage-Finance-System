<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Customer Registration</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Customer Signup</h2>
					    
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="first name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="firstName" id="firstName" placeholder="First Name" />
							</div>
							<div class="form-group">
								<label for="last name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="lastName" id="lastName" placeholder="Last Name" />
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
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="number" name="contact" id="contact" placeholder="Contact no" />
							</div>
						<div class="form-group">
								<label for="user_ID"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="user_ID" id="user_ID" placeholder="User" />
							</div>													
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							
								
							<div class="form-group">
								<label for="Select your Secret question"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<select name="secret" id="secret" required="required">
					                    <option value=""> Secret question</option>
					                    <option value="What is your pet name?">What is your pet name?</option>
					                    <option value="Whats is your favourite colour?">What is your favorite color?</option>
					                    <option value="what is your school name?">What is your school name?</option>
					                </select>
							</div>
							<div class="form-group">
								<label for="answer"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="ans" id="ans"
									placeholder="Write your answer here" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
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
							<img src="images/signup-image.jpg" >
						</figure>
						<a href="CustomerLogin.jsp" class="signup-image-link">I am already a member</a>
						<p><a href="http://localhost:8080/official/HomePage.jsp" class="signup-image-link">Home</a></p>
					</div>
				</div>
			</div>
		</section>

	</div>
	<!-- JS -->
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
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>