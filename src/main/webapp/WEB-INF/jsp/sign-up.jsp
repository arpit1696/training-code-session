<!DOCTYPE html>
<html lang="en">
<head>
<title>Sign-up</title>
<link href="/resources/css/tab.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body class="logged">
	<section class="inner_section common_section">
		<div class="container">
			<div class="max-WT-600 center-box">
				<div class="global_box">
					<div class="row justify-content-center">
						<div class="col-12">
							<div class="form-box center-box max-WT-500">
								<div style="background-color: #d7e5f6">
									<div style="text-align: right;">
										or already a user? Click <a href="admin"><button
												class="btn btn-primary">Login</button></a>
									</div>
									<form style="padding: 60px" style="background-color:#d7e5f6"
										class="common-form" method="post" action="/sign-up"
										enctype="multipart/form-data" id="sign-up">
										<div style="">
											<h3>
												<u><b>Register here</b></u>
											</h3>
										</div>
										<br>
										<div style="color: red; text-align: center;">${error}${sessionInvalid}${existedEmail}</div>
										<div class="form-group" Style="width: 75%">
											<label>Name</label><br> <input type="text" name="name"
												id="name" maxlength=46 class="form-control" value=""
												placeholder="Enter First name" required />
											<p id="p_name"></p>
										</div>
										<br>
										<div class="form-group mb20" Style="width: 75%">
											<label>Email</label><br> <input type="email" id="email"
												value="" name="email" class="form-control"
												placeholder="Enter your email" required />
											<p id="p_email"></p>
										</div>
										<br>
										<div class="form-group" Style="width: 75%">
											<label>Password</label><br> <input type="password"
												id="password" value="" name="password" class="form-control"
												maxlength=20 placeholder="Enter your password" minlength=8
												required />
											<p id="p_password"></p>
										</div>
										<br>
										<div class="form-group" Style="width: 75%">
											<label>Confirm Password</label><br> <input
												type="password" value="" id="confirmpassword"
												name="confirmpassword" class="form-control" maxlength=20
												placeholder="Confirm your password" minlength=8 required />
											<p id="p_con_password"></p>
										</div>
										<br>
										<div class="form-group" Style="width: 75%">
											<label>Role</label><br> <select class="form-control"
												name="role" required>
												<option value="">Role</option>
												<option value="1">Student</option>
												<option value="2">Teacher</option>
											</select>
										</div>
										<br>
										<div class="form-group">
											<label>Gender</label><br> <label class="d-block pdlft20"
												for="radio1"> <input type="radio"
												class="form-check-input" id="radio1" name="gender"
												value="Male" checked>Male
											</label> <label class=" -block pdlft20" for="radio1"> <input
												type="radio" value="Female" class="form-check-input"
												id="radio2" name="gender">Female
											</label> <label class="d-block pdlft20" for="radio1"> <input
												type="radio" value="Other" class="form-check-input"
												id="radio3" name="gender">Other
											</label>
										</div>
										<br>
										<div>
											<a href="login"><button type="submit" id="submit"
													class="btn btn-primary" onclick="recaptcha();">Submit</button></a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<script>
		$(document).ready(function() {
			$("#submit").click(function() {
				alert("You are redirecting to login page");
			});
		});
	</script>
	<script type="text/javascript">
		function recaptchaCallback() {
			var response = grecaptcha.getResponse(), $button = jQuery("#submit");
			jQuery("#hidden-grecaptcha").val(response);
			console.log(jQuery("#ff").valid());
			if (jQuery("#ff").valid()) {
				$("#submit").$button.attr("disabled", false);
			} else {
				$button.attr("disabled", "disabled");
			}
		}
		function expiredRecaptchaCallback() {
			var $button = jQuery("#submit");
			jQuery("#hidden-grecaptcha").val("");
			var $button = jQuery("#submit");
			if (jQuery("#ff").valid()) {
				$("#submit").$button.attr("disabled", false);
			} else {
				$button.attr("disabled", "disabled");
			}
		};
	</script>

	<script>
		$("#firstname").keyup(function() {
			nameValidate();
		});
		$("#lastname").keyup(function() {
			lastNameValidate();
		});
		$("#email").keyup(function() {
			emailValidate();
		});
		$("#password").keyup(function() {
			matchPassword();
			passVallidate();

		});
		$("#confirmpassword").keyup(function() {
			matchPassword();
		});

		function matchPassword() {
			isMatchedPassword = false;
			let con_pass = $("#confirmpassword").val();
			let pass = $("#password").val();
			if (con_pass != '' || pass != '') {
				if (con_pass === pass) {
					isMatchedPassword = true;
					$('#p_password').text("Matched.").css("color", "green");
					$('#p_con_password').text("Matched.").css("color", "green");
				} else {
					$('#p_password').text("Password not matched.").css("color",
							"red");
					$('#p_con_password').text("Password not matched.").css(
							"color", "red");
					isMatchedPassword = false;
					$('#p_password').show();
					$('#p_con_password').show();
				}
			} else {
				$('#p_password').text("Can't be Empty Password.").css("color",
						"red");
				$('#p_con_password').text("Can't be Empty Confirm Password.")
						.css("color", "red");
			}

		}

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
				$('#p_password').text("Ok").css("color", "green");
			}
		}

		function emailValidate() {
			isEmailValidate = false;
			let email = $("#email").val();
			let emailFilter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

			if (!emailFilter.test(email)) {
				$("#p_email").text("Invalid Email id.").css("color", "red");
				isEmailValidate = false;
				return isEmailValidate;

			} else {
				isEmailValidate = true;
				$("#p_email").text("Valid Email id.").css("color", "green");
				return isEmailValidate;
			}
		}
		function nameValidate() {
			let name = $("#firstname").val();
			isNameValidate = false;
			let nameFilter = /^[a-zA-Z-]+$/;
			if (name.length === '') {
				$('#p_firstname').text("Name should not be empty.").css(
						"color", "red");
			}
			if (!nameFilter.test(name)) {
				$('#p_firstname').text("Name Should be String.").css("color",
						"red");
				isNameValidate = false;
				return isNameValidate;
			} else {
				$('#p_firstname').text("Valid.").css("color", "green");
				isNameValidate = true;
				return isNameValidate;
			}
		}

		function lastNameValidate() {
			let name = $("#lastname").val();
			isNameValidate = false;
			let nameFilter = /^[a-zA-Z-]+$/;
			if (name.length === '') {
				$('#p_lastname').text("Name should not be empty.").css("color",
						"red");
			}
			if (!nameFilter.test(name)) {
				$('#p_lastname').text("Name Should be String.").css("color",
						"red");
				isNameValidate = false;
				return isNameValidate;
			} else {
				$('#p_lastname').text("Valid.").css("color", "green");
				isNameValidate = true;
				return isNameValidate;
			}
		}
	</script>
	<script>
		function fileValidation() {
			var fileInput = document.getElementById('profile');
			var filePath = fileInput.value;
			var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
			if (!allowedExtensions.exec(filePath)) {
				alert('Please upload file having extensions .jpeg/.jpg/.png/.gif only.');
				fileInput.value = '';
				return false;
			} else {
				//Image preview
				if (fileInput.files && fileInput.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						document.getElementById('imagePreview').innerHTML;
					};
					reader.readAsDataURL(fileInput.files[0]);
				}
			}
		}
	</script>
</body>
</html>