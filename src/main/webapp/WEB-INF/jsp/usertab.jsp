<html>
<head>
<link href="/resources/css/tab.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<script>
	function logout() {
		alert("Are you sure, you want to log out?");
	}
</script>
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
	<div class="tab">
		<button class="tablinks" onclick="openCity(event, 'London')">Tab1</button>
		<button class="tablinks" onclick="openCity(event, 'Paris')">Tab2</button>
		<button class="tablinks" onclick="openCity(event, 'Tokyo')">Tab3</button>
	</div>

	<div id="London" class="tabcontent">
		<h3>Tab1</h3>
		<p>Tab1 content goes here.</p>
	</div>

	<div id="Paris" class="tabcontent">
		<h3>Tab2</h3>
		<p>Tab1 content goes here.</p>
	</div>

	<div id="Tokyo" class="tabcontent">
		<h3>Tab3</h3>
		<p>Tab1 content goes here.</p>
	</div>


	<br>
	<nav class="nav navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="userview">View</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="sign-up">Signup</a></li>
				<li id="page1"><a href="admin">Login</a></li>
				<li><a href="usertableview">Table view</a></li>
				<li><a href="maps">Map</a></li>
				<li><a href="highchart">Graph</a></li>
				<li><a href="usergridview">Grid view&nbsp;&nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
						&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
						&nbsp; &nbsp;
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
	<div style="text-align: right">
		<a href="admin">
			<button type="submit" class="btn btn-danger">Logout</button>
		</a>
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
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</html>
