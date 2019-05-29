<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

</head>
<body>
	<div>
		<div style="text-align: center;">
			<h3>Verify your OTP</h3>
		</div>
		<form method="post" action="/otppage">
			<div class="form-group mb20">
				<input type="hidden" id="name" value="${emailForOtp}" name="email"
					class="form-control" placeholder="Enter your email" required />
				<p id="p_email"></p>
			</div>
			<div class="form-group mb20">
				<label><h5>OTP</h5></label> <input type="number" name="otp"
					class="form-control" value="" placeholder="Enter your OTP here"
					required />
			</div>
			<div class="text-center">
				<a href="changepassword"><button type="submit"
						class="btn btn-success"">Verify</button></a>
			</div>
		</form>

		<div style="text-align: center;">Or</div>
		<div style="text-align: center;">
			<a href="/admin"><button type="submit" class="btn btn-info">Login</button></a>
		</div>
		<div style="color: red; text-align: center;">${otpStatus}</div>
		<div style="color: green; text-align: center">${mailStatus}</div>
	</div>

	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script src="/resources/js/sign-up.js"></script>
	<script src="//code.jquery.com/jquery.min.js"></script>
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