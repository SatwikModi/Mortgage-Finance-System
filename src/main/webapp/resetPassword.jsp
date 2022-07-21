<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Reset Password</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="">
<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main">

		<!-- Sing in  Form -->
		
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
				 
					
					
					<div class="signin-form">
						<h2 class="form-title">Reset Password</h2>
						<form method="post" action="resetPassword" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="password" id="password"
									placeholder="Enter Your new password" />
							</div>
							
							
							<div class="form-group">
								<label for="answer"><i class="zmdi zmdi-lock"></i></label> <input
									type="text" name="confirmPassword" id="confirmPassword"
									placeholder="Confirm Password" />
							
							</div>
							<div class="form-group form-button">
								<input type="submit" name="submit" id="submit"
									class="form-submit" value="submit" />
							</div>
							
						</form>
						
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
		if(status == "failed"){
			swal("User ID or Secrets question's answer is wrong ","error");
		}
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>