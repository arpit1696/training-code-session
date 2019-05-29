<html>
<head>
<title>Table view</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
</head>
<body>
	<div class="menu-box ml-auto" style="text-align: right">
		<a href="/admin" class="btn btn-danger" data-toggle="modal"
			data-target=".bs-example-modal-sm">Logout</a>
	</div>
	<div class="container">
		<table id="example" class="table table-striped table-bordered">
			<thead style="background-color: #1265a2; color: white">
				<tr>
					<th>id</th>
					<th>Firstname</th>
					<th>Lastname</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Role</th>
					<th>Marital status</th>
					<th>Hobbies</th>
				</tr>
			</thead>
			<tbody>
				<tr class="info">
					<td>${myProfileDetails.id}</td>
					<td>${myProfileDetails.firstname}</td>
					<td>${myProfileDetails.lastname}</td>
					<td>${myProfileDetails.email}</td>
					<td>${myProfileDetails.gender}</td>
					<td>${myProfileDetails.role}</td>
					<td>${myProfileDetails.marital_status}</td>
					<td>${myProfileDetails.Hobbies}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div style="text-align: center">
		<a href="usertab">
			<button type="submit" class="btn">Back</button>
		</a>
	</div>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.js">
		
	</script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js">
		
	</script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js">
		
	</script>
	<script>
		$(document).ready(function() {
			$('#example').DataTable();
		});
	</script>
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
							href="/usertableview" class="btn btn-header active">No</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/marquee.js"></script>
<script src="/resources/js/slick.min.js"></script>
<script src="/resources/js/common.js"></script>
</html>