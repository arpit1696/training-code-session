<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/img/appicon.png"
	type="image/gif" sizes="16x16">
<title>Elevate</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 http://52.221.54.107/PROJECTS/Elevate/public/assets/css/bootstrap.min.css-->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/Ionicons/css/ionicons.min.css">

<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<!-- Theme style -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/bootstrap-datetimepicker.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/custom.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/js/select2/select2.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<!-- <link rel="stylesheet" href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"> -->
<!-- Daterange picker -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<!-- <link rel="stylesheet" href="http://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css"> -->
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/css/toastr.min.css">
<link rel="stylesheet"
	href="http://52.221.54.107/PROJECTS/Elevate/public/css/jquery-ui.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<style>
.view-block-s {
	max-width: 500px;
	margin: 0 auto;
	text-align: center;
}
</style>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style>
.cke {
	visibility: hidden;
}
</style>
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	box-sizing: content-box;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
</head>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%;">
	<div class="wrapper" style="height: auto; min-height: 100%;">

		<header class="main-header">
			<!-- Logo -->


			<a
				href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dashboard"
				class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
				class="logo-mini"><b>E</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Elevate</b></span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a> <input type="hidden" name="base_defined_url"
					value="http://52.221.54.107/PROJECTS/Elevate/public"
					id="base_defined_url">
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								height="20px" width="20px"
								src="http://52.221.54.107/PROJECTS/Elevate/public/images/1549625904.jpg"
								class="img-circle" alt="User Image"> <span
								class="hidden-xs">Admin Elevate</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="http://52.221.54.107/PROJECTS/Elevate/public/images/1549625904.jpg"
									class="img-circle" alt="User Image">

									<p>Admin Elevate</p></li>

								<li class="user-footer">
									<div class="pull-left">
										<a
											href="http://52.221.54.107/PROJECTS/Elevate/public/admin/edit/profile/1"
											class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a href="http://52.221.54.107/PROJECTS/Elevate/public/logout"
											class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" style="height: auto;">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img
							src="http://52.221.54.107/PROJECTS/Elevate/public/images/1549625904.jpg"
							class="img-circle" alt="User Image"
							style="height: 40px; width: 40px">
					</div>
					<div class="pull-left info">
						<p>Admin Elevate</p>
					</div>
				</div>
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu tree" data-widget="tree">
					<li class="active"><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/dashboard"><i
							class="fa fa-circle-o"></i><span>Dashboard</span> </a></li>

					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/sub-admin/list">
							<i class="fa fa-user"></i> <span>Sub Admin Management</span>
					</a></li>

					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/user/list">
							<i class="fa fa-user"></i> <span>Mentor/Coach Management</span>
					</a></li>
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/mentee/list">
							<i class="fa fa-user"></i> <span>Mentee/Coachee Management</span>
					</a></li>
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/matching/list">
							<i class="fa fa-users"></i> <span>Matching Management</span>
					</a></li>
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/school/list">
							<i class="fa fa-home"></i> <span>School Management</span>
					</a></li>
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/university/list">
							<i class="fa fa-university"></i> <span>University
								Management</span>
					</a></li>
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/company/list">
							<i class="fa fa-building-o"></i> <span>Company Management</span>
					</a></li>
					<!-- <li>
                <a href="http://52.221.54.107/PROJECTS/Elevate/public/admin/category/list">
                <i class="fa fa-list-alt"></i> <span>Category Management</span>
                </a>
            </li>
            <li>
                <a href="http://52.221.54.107/PROJECTS/Elevate/public/admin/activity/list">
                <i class="fa fa-tasks"></i> <span>Activity Management</span>
                </a>
            </li> -->
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/meeting/list">
							<i class="fa fa-tasks"></i> <span>Meeting Management</span>
					</a></li>
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/goal/list">
							<i class="fa fa-bullseye"></i> <span>Goal Management</span>
					</a></li>
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/security/list">
							<i class="fa fa-lock"></i> <span>Security Management</span>
					</a></li>
					<li class="">
						<!-- http://52.221.54.107/PROJECTS/Elevate/public/admin/chat/list -->
						<a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/chatted/user/list">
							<i class="fa fa-comments"></i> <span>Chat Management</span>
					</a>
					</li>
					<li class=""><a
						href="http://52.221.54.107/PROJECTS/Elevate/public/admin/static/list">
							<i class="fa fa-paper-plane"></i> <span>Static Management</span>
					</a></li>
					<li class="treeview"><a href="#"> <i class="fa fa-user"></i>
							<span>My Account</span> <span class="pull-right-container">
								<i class="fa fa-angle-right pull-right"></i>
						</span>
					</a>
						<ul class="treeview-menu">
							<li class=""><a
								href="http://52.221.54.107/PROJECTS/Elevate/public/admin/edit/profile/1"><i
									class="fa fa-circle-o"></i> Update Profile</a></li>
							<li class=""><a
								href="http://52.221.54.107/PROJECTS/Elevate/public/admin/edit/password/1?type=change-password"><i
									class="fa fa-circle-o"></i> Change Password</a></li>
						</ul></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 668px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Dashboard</h1>
				<ol class="breadcrumb">
					<li class="active">Dashboard</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Small boxes (Stat box) -->
				<div class="dashboard-boxes">
					<div class="row">
						<div class="col-lg-4 col-xs-6">
							<!-- small box -->

							<div class="small-box bg-aqua">
								<a
									href="http://52.221.54.107/PROJECTS/Elevate/public/admin/total/user/list"
									class="box-ref">
									<div class="inner">
										<h3>16</h3>

										<p>
											Total Users <br> (Mentors/Coach &amp; Mentees/Coachee)
										</p>
									</div>
									<div class="icon">
										<i class="ion ion-bag"></i>
									</div>
								</a><a
									href="http://52.221.54.107/PROJECTS/Elevate/public/admin/total/user/list"
									class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>

							</div>
							<!-- </a> -->
						</div>
						<!-- ./col -->
						<div class="col-lg-4 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-green">
								<a
									href="http://52.221.54.107/PROJECTS/Elevate/public/admin/user/list"
									class="box-ref">
									<div class="inner">
										<h3>8</h3>

										<p>Total Mentor/Coach</p>
									</div>
									<div class="icon">
										<i class="ion ion-stats-bars"></i>
									</div>
								</a><a
									href="http://52.221.54.107/PROJECTS/Elevate/public/admin/user/list"
									class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>

							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-4 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-yellow">
								<a
									href="http://52.221.54.107/PROJECTS/Elevate/public/admin/mentee/list"
									class="box-ref">
									<div class="inner">
										<h3>8</h3>

										<p>Total Mentee/Coachee</p>
									</div>
									<div class="icon">
										<i class="ion ion-person-add"></i>
									</div>
								</a><a
									href="http://52.221.54.107/PROJECTS/Elevate/public/admin/mentee/list"
									class="small-box-footer">More info <i
									class="fa fa-arrow-circle-right"></i></a>

							</div>
						</div>
						<!-- ./col -->
					</div>
				</div>
				<!-- <div class="box box-danger">
        <div class="box-header with-border">
          <h3 class="box-title">Donut Chart</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
            </button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
          <div id="piechart" style="width: 900px; height: 500px;"></div>
        </div>
        <!-- /.box-body 
      </div> -->
				<!-- <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <div id="barChart" style="height: 230px; width: 510px;" width="510" height="230"></div>
              </div>
            </div>
            <!-- /.box-body 
          </div> -->


			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong>Copyright © 2018-2019 <a href="#">Elevate</a>.
			</strong> All rights reserved.
		</footer>
		<!-- Delete Model -->
		<div class="example-modal">
			<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<form method="post" id="modalFooter" action="">
						<input type="hidden" name="_token"
							value="vHOp4cdFfbBYGZCkWcLg5dQ4l8BDRsZ2VZv7a6kF">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">×</span>
								</button>
								<h4 id="modelTitle" class="modal-title"></h4>
								<input id="deleteData1" name="deleteData1" type="hidden"
									value=""> <input id="deleteData2" name="deleteData2"
									type="hidden" value=""> <input id="deleteData3"
									name="deleteData3" type="hidden" value=""> <input
									id="deleteData4" name="deleteData4" type="hidden" value="">
							</div>
							<div class="modal-body">
								<p>
									Are you sure <span id="modalTxt"></span> ?
								</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default pull-left"
									data-dismiss="modal">Cancel</button>
								<button id="confirmDelete" type="submit" class="btn btn-primary">Confirm</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- /. Delete Modal -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="active"><a
					href="#control-sidebar-theme-demo-options-tab" data-toggle="tab"><i
						class="fa fa-wrench"></i></a></li>
				<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
						class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<script type="text/javascript">
		var baseUrl = "http://52.221.54.107/PROJECTS/Elevate/public";
	</script>

	<!-- jQuery 3 -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery-ui/jquery-ui.min.js"></script> -->
	<!-- DatePicker -->
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->

	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/jquery-ui.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/select2/select2.min.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/select2.multi-checkboxes.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/datepicker.js"></script>

	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

	<!-- Morris.js charts -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/raphael/raphael.min.js"></script>
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/morris.js/morris.min.js"></script> -->
	<!-- Sparkline -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/moment/min/moment.min.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script> -->
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/fastclick/lib/fastclick.js"></script>

	<script src="http://52.221.54.107/PROJECTS/Elevate/public/js/block.js"></script>
	<!--  <script src="http://52.221.54.107/PROJECTS/Elevate/public/js/jquery.validate.min.js"></script> -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.js"></script>
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/js/additional-methods.js"></script> -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/validation.js"></script>
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/bootstrap-datetimepicker.js"></script>
	<!-- AdminLTE App -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<!-- <script src="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/js/pages/dashboard.js"></script> -->





	<!-- AdminLTE for demo purposes -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/dist/js/demo.js"></script>
	<!-- ChartJS -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/admin/bower_components/chart.js/Chart.js"></script>
	<!-- Toastr -->
	<!-- <script src="http://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script> -->
	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/js/toastr.min.js"></script>
	<script type="text/javascript"></script>
	<!-- <script src="/PROJECTS/Elevate/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script> -->

	<script
		src="http://52.221.54.107/PROJECTS/Elevate/public/../vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>

	<script>
		CKEDITOR.replace('article-ckeditor');
	</script>
	<script>
		$(function() {
			$.ajaxSetup({
				headers : {
					'X-CSRF-Token' : $('input[name="_token"]').val()
				}
			});
			/*var getUrl = window.location;
			var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
			var baseUrl1 = getUrl.pathname.split('/')[2];
			var baseUrl2 = getUrl.pathname.split('/')[3];
			var url_base = baseUrl + '/' + baseUrl1 + '/' + baseUrl2;*/
			//alert(baseUrl)
			//Initialize Select2 Elements

			$('#hobbies').select2({
				minimumInputLength : 1,
				tags : true,
				multiple : true,
				allowClear : true,
				tokenSeparators : [ ',', ' ' ],
				maximumSelectionLength : 5,
				//selectOnBlur: true,
				ajax : {
					url : baseUrl + '/admin/ajax/hobbies',
					dataType : 'json',
					quietMillis : 100,
					data : function(term) {
						return {
							term : term
						};
					},
					/*processResults: function (data) {
						return {
							results: $.map(data.data, function (item) { 
								return {
									text: item,                       
									id: item
								}
							})
						
						};
					},*/
					processResults : function(data) {
						//console.log(data)
						var myResults = [];
						$.each(data.data, function(index, item) {
							myResults.push({
								text : item.name,
								id : item.id,

							});
						});

						return {
							results : myResults
						};

					},

				},
			});

			$('#hobbies')
					.on(
							'change',
							function() {
								var lengthHobbies = $(this).val();
								var countVal = lengthHobbies.length;
								var isText = validateText(lengthHobbies);
								var isCount = validateCount(countVal);
								if (isCount == false) {
									$('.error')
											.html(
													'Maximum 5 selection to be chosen.');
									$('#texerr').val(1);
									$('#hidtexerr').val(1);
									return false;
								} else if (isText == false) {
									$('.error')
											.html(
													'Hobbies length should not exceed 10 characters');
									$('#texerr').val(1);
									$('#hidtexerr').val(1);
									return false;
								} else {
									$('.error').html('');
									$('#texerr').val('');
									$('#hidtexerr').val('');
								}
							});

			function validateText(html) {
				var html = html.slice(-1)[0];
				var htmlLength = html.length;

				if (jQuery.trim(htmlLength) > 10) {
					return false;
				} else {
					return true;
				}
			}

			function validateCount(countVal) {
				if (countVal > 5) {
					return false;
				} else {
					return true;
				}
			}

			$('#specialism').select2({
				minimumInputLength : 1,
				//tags: true,
				multiple : true,
				tokenSeparators : [ ',' ],
				maximumSelectionLength : 5,
				ajax : {
					url : baseUrl + '/admin/ajax/specialism',
					dataType : 'json',
					quietMillis : 100,
					data : function(term) {
						return {
							term : term
						};
					},
					processResults : function(data) {
						if (data) { //console.log(data);
							return {
								results : $.map(data.data, function(item) {
									//results = [];
									return {
										text : item.name,
										id : item.id
									}
								})
							};
						} else {
							return {
								results : [ {
									id : 1,
									text : 'Test'
								} ]
							}
						}

					},
				},
			});

			$('.select2-multiple3').select2({

				placeholder : "Choose mentor",
				allowClear : true,
				ajax : {
					url : baseUrl + '/admin/matching/search/mentor',
					method : 'post',
					dataType : 'json',
					quietMillis : 100,
					data : function(term) {
						return {
							term : term
						};
					},
					processResults : function(data) {
						if (data) {
							return {
								results : $.map(data, function(item) {
									console.log(item)
									//results = [];
									return {
										text : item.name,
										id : item.id
									}
								})
							};
						} else {
							return {
								results : [ {
									id : 1,
									text : 'Test'
								} ]
							}
						}

					},
				}
			});

			/*$('#example1').DataTable()
			$('#example2').DataTable({
			  'paging'      : true,
			  'lengthChange': false,
			  'searching'   : false,
			  'ordering'    : false,
			  'info'        : true,
			  'autoWidth'   : false
			})*/

			//         CKEDITOR.instances.wysiwyg.on('click', function() {
			//     alert ('Hohum');
			// });
			var oTable = $('#example').DataTable();
			$.fn.dataTableExt.afnFiltering.length = 0;
			oTable.draw();
			var userListTable = $('#example1').DataTable({
				'paging' : true,
				'lengthChange' : false,
				'searching' : true,
				'ordering' : false,
				'info' : true,
				'autoWidth' : false,
				'Placeholder' : true,
				language : {
					search : "_INPUT_",
					searchPlaceholder : "Search Email"
				}

			})
		})
	</script>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>

	<script>
		$(function() {
			$("#datepicker").datepicker();
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			//$(".select2-search__field").select2();
		});
	</script>
	<script>
		/*function textCounter() { alert('hi')
		    var html=CKEDITOR.instances.YOUR_TEXTAREA_ID.getSnapshot();
			var dom=document.createElement("DIV");
			dom.innerHTML=html;
			var plain_text=(dom.textContent || dom.innerText);

			alert(plain_text);
		}

		$('.editor_ck').click(function(){
			alert('hi')

		});*/
	</script>
	<script type="text/javascript">
		var url_base = "http://52.221.54.107/PROJECTS/Elevate/public";
	</script>




</body>
</html>