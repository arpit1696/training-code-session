<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="/resources/css/tab.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	<div style="text-align: center;">
		<label>${adminMessage}</label>
	</div>
	<div style="text-align: right">
		<a href="admin">
			<button type="submit" class="btn btn-danger">Logout</button>
		</a>
	</div>
	<br>
	
	<br>
<br><br><br>
	<div class="row">
		<c:forEach items="${details}" var="details">
			<div class="col-md-1 col-sm-offset-1" style="height: 70%;">
				<img src="/resources/uploads/${details.image_url}"
					class="img-rounded" width="80" height="80">
			</div>
			<div class="col-md-2">
				<ul>
					<li><label>First name</label> : ${details.firstname}</li>
					<li><label>Last name</label> : ${details.Lastname}</li>
					<li><label>Email</label> : ${details.email}</li>
					<li><label>Role</label> : ${details.role}</li>
					<a href="/delete?email=${details.email}"onclick:"{returndelete();}">
						<button class="danger" onclick:"{return delete();}" type="submit"
							name="delete" id="/delete">Delete</button>
					</a>
				</ul>
			</div>
		</c:forEach>
		<br> <br>
	</div>
<br>
	<ul class="pagination pagination-sm" style="text-align:center;";>
		<c:forEach begin="1" end="${pagecount}" varStatus="i">
			<li class="page-item"><a class="page-link"
				href="/gridview/${i.index}">${i.index}</a></li>
		</c:forEach>
	</ul>
	<hr>
		<div style="text-align: center">
		<a href="tab">
			<button type="submit" class="btn">Back</button>
		</a>
	</div>
</body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</html>