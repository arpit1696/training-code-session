<html>
<head>
<title>Login</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/fonts/stylesheet.css" rel="stylesheet">
<link href="/resources/css/slick.css" rel="stylesheet">
<link href="/resources/css/slick-theme.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/mobile.css" rel="stylesheet">
<link href="/resources/css/mycode.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

</head>
<body>

	<div style="text-align: center;">
		<h3>Forgot Password</h3>
	</div>

	<form method="post" action="/forgotPasswordEmail">
		<div class="form-group mb20">
			<label><h5>Email</h5></label> <input type="email" id="email"
				name="email" class="form-control" value=""
				placeholder="Enter your email" required />
			<p id="p_email"></p>
		</div>
		<div class="text-center">
			<a href="/otppage"><button type="submit" class="btn btn-success"">Send</button></a>
		</div>
	</form>

	<center>Or</center>
	<br>
	<div style="text-align: center;">
		<a href="/admin"><button type="submit" class="btn btn-info">Login</button></a>
	</div><br>
	<div style="color: red; text-align: center;">${mailStatus}</div>

	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script src="/resources/js/sign-up.js"></script>
	<script src="//code.jquery.com/jquery.min.js"></script>

	<script src="jquery.password-validation.js"></script>

	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script>
		$("#email").keyup(function() {
			emailValidate();
		});
		function emailValidate() {
			isEmailValidate = false;
			let email = $("#email").val();
			let emailFilter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!emailFilter.test(email)) {
				$("#p_email").text("Invalid Email id.").css("color", "red");
				isEmailValidate = false;
			} else {
				isEmailValidate = true;
				$("#p_email").text("Valid Email id.").css("color", "green");
			}

		}
	</script>
</body>
</html>