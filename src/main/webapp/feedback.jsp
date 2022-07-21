<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Feedback Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="">

<!-- Main css -->
<link rel="" href="">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main" align="center">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h1 class="form-title">Feedback Form</h1>
					    
						<form method="post" action="feedback" class="register-form"
							id="register-form">
							<div class="form-group">
							<div class="rating">
							<h3>Rate us</h3>
    <input type="radio" name="star" id="star1"><label for="star1">1</label>
    <input type="radio" name="star" id="star2"><label for="star2">2</label>
    <input type="radio" name="star" id="star3"><label for="star3">3</label>
    <input type="radio" name="star" id="star4"><label for="star4">4</label>
    <input type="radio" name="star" id="star5"><label for="star5">5</label>
    </div>
								
							
							<div class="form-group">
								<label for="last name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<h3>Suggestions</h3>
									<textarea rows="9" cols="100" type="text" name="feedback" id="feedback" placeholder="feedback" > </textarea>
							</div>						
						
									
							<div class="form-group form-button">
								<input type="submit" name="submit" id="submit"
									class="submit" value="Submit" />
							</div>
							
        
        					<p><a href="http://localhost:8080/official/HomePage.jsp">Home</a></p>
							
							
						</form>
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
			swal("Feedback form submitted successfully.","Success");
		}
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>