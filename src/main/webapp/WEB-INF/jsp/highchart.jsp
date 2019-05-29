<html>
<head>
<link href="/resources/css/tab.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
</head>

<body>
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
				<li><a href="/gridview/1">Grid view&nbsp;&nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
						&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;
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
	<div id="container"
		style="min-width: 310px; height: 400px; margin: 0 auto"></div>

	<table id="datatable">
		<thead>
			<tr>
				<th></th>
				<th>Admin percent</th>
				<th>User percent</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>Admin</th>
				<td>${countadmin}</td>
				<td>${countuser}</td>
			</tr>
		</tbody>
	</table>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/js/highchart.js"></script>

</html>