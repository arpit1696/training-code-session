<html>
<head>
<title>View</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

</head>
<body>
	<div class="menu-box ml-auto" style="text-align: right">
		<a href="/admin" class="btn btn-danger" data-toggle="modal"
			data-target=".bs-example-modal-sm">Logout</a>
	</div>
	<h2>List View 1:</h2>
	<br>
	<div style="padding: 25px">
		<table>
			<thead style="background-color: #1265a2; color: white">
				<tr>
					<th>Profile</th>
					<th>Details</th>
					<th>For more info</th>
				</tr>
			</thead>
			<tr>
				<td><img src="/resources/uploads/${details.image_url}"
					class="img-thumbnail" width="200" height="300"></td>
				<td>
					<ul>
						<li><label>Customer no :</label>${myProfileDetails.id}</li>
						<li><label>First name</label> : ${myProfileDetails.firstname}</li>
						<li><label>Last name</label> : ${myProfileDetails.Lastname}</li>
						<li><label>Email</label> : ${myProfileDetails.email}</li>
						<li><label>Role</label> : ${myProfileDetails.role}</li>
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
		</table>
		<br> <br>
		<div style="text-align: center">
			<a href="usertab">
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
						<a href="admin" class="btn btn-header active">Yes</a> <a
							href="/userview" class="btn btn-header active">No</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/marquee.js"></script>
<script src="/resources/js/slick.min.js"></script>
<script src="/resources/js/common.js"></script>
</html>