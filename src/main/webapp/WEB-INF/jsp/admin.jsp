<html>
<head>
<title>Login</title>
<link href="/resources/css/tab.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>
body {
	font-family: Arial;
	background-color: #32b1e2;
}

.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

.tab button:hover {
	background-color: #ddd;
}

.tab button.active {
	background-color: #ccc;
}

.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>
</head>
<body>
	<br>
	<div style="text-align: center;">
		<h3>Login</h3>
	</div>
	<form method="post" action="/admin">
		<div class="form-group mb20">
			<label>Email</label><br> <input type="email" id="email" value=""
				name="email" class="form-control" placeholder="Enter your email"
				required />
			<p id="p_email"></p>
		</div>
		<br>
		<div class="form-group">
			<label>Password</label><br> <input type="password" id="password"
				value="" name="password" class="form-control" maxlength=20
				placeholder="Enter your password" minlength=8 required />
			<p id="p_password"></p>
		</div>
		<div style="text-align: right;">
			<a style="color: white;" href="/forgotPasswordEmail">Forgot
				password?</a>
		</div>
		<div style="color: red; text-align: center" id="invalidLogin">
			<p>${invalidLogin}${sessionExpired} ${notAuthorised}</p>
		</div>
		<br>
		<div class="text-center" id="save">
			<a ><button type="submit" class="btn btn-primary">Login</button></a>
		</div>
	</form>
	<div class="text-center" id="save">
		Or new user? Click below<br> <br> <a href="sign-up"><button
				id="save" type="submit" class="btn btn-primary">Signup</button></a>
	</div>
	<script>
		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}
	</script>
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
		$("#password").keyup(function() {
			passVallidate();

		});
		function passVallidate() {
			let pass = $("#password").val();
			let lowerCaseFilter = /[a-z]/g;
			let upperCaseFilter = /[A-Z]/g;
			let digitsFilter = /[0-9]/g;
			let specialFilter = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi;
			let isLower = false;
			let isUpper = false;
			let isDigit = false;
			let isSpecial = false;
			let isEight = false;
			if (lowerCaseFilter.test(pass)) {
				isLower = true;
			} else {
				isLower = false;
			}

			if (upperCaseFilter.test(pass)) {
				isUpper = true;
			} else {
				isUpper = false;
			}

			if (digitsFilter.test(pass)) {
				isDigit = true;
			} else {
				isDigit = false;
			}

			if (specialFilter.test(pass)) {
				isSpecial = true;
			} else {
				isSpecial = false;
			}

			if (isLower == false) {
				$('#p_password').text("Must contain a Lower letter.").css(
						"color", "red");
			} else if (isUpper == false) {
				$('#p_password').text("Must contain a Capital letter.").css(
						"color", "red");
			} else if (isDigit == false) {
				$('#p_password').text("Must contain a Digits.").css("color",
						"red");
			} else if (isSpecial == false) {
				$('#p_password').text("Must contain a Special letter.").css(
						"color", "red");
			}

			if (isLower == true && isUpper == true && isDigit == true
					&& isSpecial == true) {
				if (pass.length >= 8) {
					isEight = true;
				} else {
					$('#p_password').text("Password should be 8 letter.").css(
							"color", "red");
					isEight = false;
				}
			}
			if (isEight == true) {
				$('#p_password').text("Ok").css("color", "white");
			}
		}

		function emailValidate() {
			isEmailValidate = false;
			let email = $("#email").val();
			let emailFilter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!emailFilter.test(email)) {
				$("#p_email").text("Invalid Email id.").css("color", "red");
				isEmailValidate = false;
			} else {
				isEmailValidate = true;
				$("#p_email").text("Valid Email id.").css("color", "white");
			}
		}
	</script>
</body>
</html>
