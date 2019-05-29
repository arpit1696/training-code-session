<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
	function logout() {
		alert("Are you sure, you want to log out?");
	}
</script>
<style>
* {
	box-sizing: border-box;
}
/* Style the buttons */
.col-md-1 col-sm-offset-1 {
	widht: 50;
	height: 60;
}

.btn {
	border: none;
	outline: none;
	padding: 12px 16px;
	background-color: #f1f1f1;
	cursor: pointer;
}

.btn:hover {
	background-color: #ddd;
}

.btn.active {
	background-color: #666;
	color: white;
}

.primary {
	background-color: #008CBA;
	border: none;
	color: white;
	padding: 5px 7px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

.danger {
	background-color: #f44336;
	border: none;
	color: white;
	padding: 5px 7px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}
</style>
<script>
	function edit() {
		alert("Edit alert");
	}

	function function2() {
		alert("Delete alert");
	}
</script>
</head>

<body>
<div style="text-align: right">
		<a href="admin">
			<button type="submit" class="btn btn-danger">Logout</button>
		</a>
	</div>
	<h2>Grid View :</h2>
	<br>
	<div class="row">
		<div class="col-md-1 col-sm-offset-1" style="height: 30%;">
			<img src="/resources/uploads/${details.image_url}"
				class="img-rounded" width="100" height="100">
		</div>
		<div class="col-md-2">
			<ul>
				<li><label>First name</label> : ${details.firstname}</li>
				<li><label>Last name</label> : ${details.Lastname}</li>
				<li><label>Email</label> : ${details.email}</li>
				<li><label>Role</label> : ${details.role}</li>
				<a href="edit?email=${details.email}"onclick:"{returnedit();}" >
					<button class="primary" onclick:"{return edit();}" type="submit"
						name="edit" id="edit">Edit</button>
				</a>
				<a href="delete?email=${details.email}"onclick:"{returndelete();}">
					<button class="danger" onclick:"{return delete();}" type="submit"
						name="delete" id="delete">Delete</button>
				</a>
			</ul>
		</div>
		<br>
	</div>
	<hr>
	<div style="text-align: center">
		<a href="usertab">
			<button type="submit" class="btn">Back</button>
		</a>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</html>