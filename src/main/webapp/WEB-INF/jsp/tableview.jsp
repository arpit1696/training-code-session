<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<script>
	function logout() {
		alert("Are you sure, you want to log out?");
	}
</script>
</head>
<body>
	<div class="menu-box ml-auto" style="text-align: right">
		<a href="/admin" class="btn btn-danger" data-toggle="modal"
			data-target=".bs-example-modal-sm">Logout</a>
	</div>
	<div style="text-align: center; padding: 20;">
		<h2>${adminMessage}</h2>
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
				<c:forEach items="${details}" var="details">
					<tr class="info">
						<td>${details.id}</td>
						<td>${details.firstname}</td>
						<td>${details.lastname}</td>
						<td>${details.email}</td>
						<td>${details.gender}</td>
						<td>${details.role}</td>
						<td>${details.marital_status}</td>
						<td>${details.Hobbies}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div style="text-align:center">
		<a href="tab">
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
							href="/tableview" class="btn btn-header active">No</a>
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