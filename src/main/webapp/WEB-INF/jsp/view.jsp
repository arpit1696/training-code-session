<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>View</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


</head>
<body>
	<div style="text-align: center;">
		<label>${adminMessage}</label>
	</div>
<div class="menu-box ml-auto" style="text-align: right">
		<a href="/admin" class="btn btn-danger" data-toggle="modal"
			data-target=".bs-example-modal-sm">Logout</a>
	</div>
	<div style="text-align: center;">
		<h1>List View 1:</h1>
	</div>
	<nav class="nav navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="view">View</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="sign-up">Signup</a></li>
				<li id="page1"><a href="admin">Login</a></li>
				<li><a href="tableview">Table</a></li>
				<li><a href="galleryview">Gallery</a></li>
				<li><a href="highchart">Graph</a></li>
				<li><a href="/gridview/1">Grid view&nbsp;&nbsp; &nbsp;&nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
						&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
						&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</a></li>
				<li><span><input class="form-control" type="search"></span></li>
				<li>
					<button id="search" type="button" class="btn btn-info">
						<span class="glyphicon glyphicon-search"></span> Search
					</button>
				</li>
			</ul>
		</div>
	</nav>
	<div style="padding: 100px">
		<table>
			<thead style="background-color: #1265a2; color: white">
				<tr>
					<th>Profile</th>
					<th>Details</th>
					<th>For more info</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${details}" var="details">
					<tr>
						<td><img src="/resources/uploads/${details.image_url}"
							class="img-thumbnail" width="200" height="300"></td>
						<td>
							<ul>
								<li><label>Customer no :</label>${details.id}</li>
								<li><label>First name</label> : ${details.firstname}</li>
								<li><label>Last name</label> : ${details.Lastname}</li>
								<li><label>Email</label> : ${details.email}</li>
								<li><label>Role</label> : ${details.role}</li>
							</ul>
						</td>
						<td>
							<ul>
								<h4>Click here to get more info</h4>
								<a href="#" class="btn btn-info btn"> <span
									class="glyphicon glyphicon-chevron-right"></span> Right
								</a>
							</ul>
						</td>
					</tr>
					<br>
				</c:forEach>
			</tbody>
		</table>
		<br> <br>
		<div style="text-align: center">
			<a href="tab">
				<button type="submit" class="btn">Back</button>
			</a>
		</div>
	</div>
		<div class="modal bs-example-modal-sm" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h4>
						Logout <i class="fa fa-lock"></i>
					</h4>
				</div>
				<div class="modal-body">Are you sure you want to log-off?</div>
				<div class="modal-footer text-center">
					<div class="btn-block">
						<a href="/admin" class="btn btn-header active">Yes</a> <a
							href="/view" class="btn btn-header active">No</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/marquee.js"></script>
<script src="/resources/js/slick.min.js"></script>
<script src="/resources/js/common.js"></script>
</html>