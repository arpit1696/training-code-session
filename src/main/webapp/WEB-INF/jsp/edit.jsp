<!DOCTYPE html>
<html lang="en">
<head>
<title>Mobiloitte</title>
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
									<form style="padding: 60px" style="background-color:#d7e5f6"
										class="common-form" method="post" action="/edit"
										enctype="multipart/form-data" id="sign-form">
										<div class="form-group" Style="width: 75%">
											<label>First Name</label><br> <input type="text"
												name="firstName" maxlength=46 id="firstname"
												class="form-control" value="" placeholder="Enter First name"
												required />
											<p id="p_firstname"></p>
										</div>
										<br>
										<div class="form-group" id="email" Style="width: 75%">
											<label>Last Name</label><br> <input type="text"
												name="lastName" maxlength=46 id="lastname"
												class="form-control" value="" placeholder="Enter Last name"
												required />
											<p id="p_lastname"></p>
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
										<div class="image section" id="imagePreview">
											<label>Profile pic</label><br>
											<div class="imageinside">
												<input name="image" src="resources/uploads/"
													onchange="return fileValidation()" id="profile" type="file">
											</div>
										</div>
										<br>
										<div class="form-group">
											<label d-block>Gender</label><br> <label
												class="d-block pdlft20" for="radio1"> <input
												type="radio" class="form-check-input" id="radio1"
												name="gender" value="Male" checked>Male
											</label> <label class=" -block pdlft20" for="radio1"> <input
												type="radio" value="Female" class="form-check-input"
												id="radio2" name="gender">Female
											</label> <label class="d-block pdlft20" for="radio1"> <input
												type="radio" value="Other" class="form-check-input"
												id="radio3" name="gender">Other
											</label>
										</div>
										<br>
										<div class="form-group" Style="width: 75%">
											<label>Marital Status</label> <select class="form-control"
												name="maritalStatus" required>
												<option value="Single">Single</option>
												<option value="Married">Married</option>
											</select>
										</div>
										<br>
										<div class="form-group" Style="width: 75%">
											<label d-block>Hobbies</label><br> <label
												class="form-check-label d-block" for="checkbox"> <input
												type="checkbox" value="Playing football" name="hobbies">Playing
												football
											</label> <label class="form-check-label d-block" for="checkbox">
												<input type="checkbox" value="Coding" name="hobbies">
												Coding
											</label> <label class="form-check-label d-block" for="checkbox">
												<input type="checkbox" value="Singing" name="hobbies"
												checked> Singing
											</label>
										</div>
										<br>

										<div style="color: maroon;">${updateStatus}</div>
										<div id="save">
											<a href="tab"><button id="button" type="submit"
													class="btn btn-primary">Update</button></a>
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
	<div style="text-align: center">
		<a href="usertab">
			<button type="submit" class="btn">Back</button>
		</a>
	</div>
	</main>

	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script src="/resources/js/sign-up.js"></script>
	<script src="//code.jquery.com/jquery.min.js"></script>
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
			} else {
				isEmailValidate = true;
				$("#p_email").text("Valid.").css("color", "green");
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
			} else {
				$('#p_firstname').text("Valid.").css("color", "green");
				isNameValidate = true;
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
			} else {
				$('#p_lastname').text("Valid.").css("color", "green");
				isNameValidate = true;
			}
		}
	</script>
</body>
</html>