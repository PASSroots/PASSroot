<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>

<!DOCTYPE html>
<html>

<%@ page import="model.User"%>
<%@ page import="model.UserDBHelper"%>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="">
<meta name="author" content="">

<title>Personal Information</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/sb-admin.css" rel="stylesheet">

</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">

	<%
		String userId = "null";
		if (session.getAttribute("userId") == null) {
			response.sendRedirect("login.jsp");
		} else {
			userId = session.getAttribute("userId").toString();
		}
		UserDBHelper userDBHelper = new UserDBHelper();
		request.setCharacterEncoding("big5");
		String userName = request.getParameter("user_name");
		String newPassword = request.getParameter("new_password");
		String confirmPassword = request.getParameter("confirm_password");
		String userEmail = request.getParameter("user_email");
		if (userEmail != null) {
			userDBHelper.editEmail(userId, userEmail);
			response.sendRedirect("#");
		} else if (newPassword != null) {
			if (newPassword.equals(confirmPassword)) {
				userDBHelper.editPassword(userId, newPassword);
			}
			response.sendRedirect("#");
		}
	%>

	<!-- Navigation -->
	<%@ include file="navigation.jsp"%>

	<div class="content-wrapper">

		<div class="container-fluid">

			<!-- Breadcrumbs -->

			<!-- Example Tables Card -->

			<%
				User userData = userDBHelper.getPersonalInfo(userId);
			%>
			<div class="row">
				<div class="col-lg-6">
					<div class="card mb-3">
						<div class="card-header">
							<i class="fa fa-address-card-o"></i> Personal Information
						</div>
						<div class="card-body">
							<form role="form" action="personalInformation.jsp" method="post"
								onsubmit="notifyUpdateEmail()">
								<div class="form-group">
									<label for="user_name"><span
										class="glyphicon glyphicon-user"></span> Name</label> <input
										type="text" class="form-control" id="user_name"
										name="user_name" value=<%out.print(userData.name);%> readonly>
								</div>
								<div class="form-group">
									<label for="user_ID"><span
										class="glyphicon glyphicon-user"></span> User ID</label> <input
										type="text" class="form-control" id="user_ID" name="user_ID"
										value=<%out.print(userData.userId);%> readonly>
								</div>
								<div class="form-group">
									<label for="user_password"><span
										class="glyphicon glyphicon-user"></span> Email</label> <input
										type="email" class="form-control" id="user_email"
										name="user_email" value=<%out.print(userData.email);%>
										placeholder="½Ð¿é¤JEmail" required>
								</div>
								<button type="submit" class="btn btn-success btn-block">
									<span class="glyphicon glyphicon-ok"></span> Update Personal
									Information
								</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card mb-3">
						<div class="card-header">
							<i class="fa fa-lock"></i> Password
						</div>
						<div class="card-body">
							<form role="form" action="personalInformation.jsp" method="post"
								onsubmit="checkPassword()">
								<div class="form-group">
									<label for="new_password"><span
										class="glyphicon glyphicon-user"></span> New Password</label> <input
										type="password" class="form-control" id="new_password"
										name="new_password" required>
								</div>
								<div class="form-group">
									<label for="confirm_password"><span
										class="glyphicon glyphicon-user"></span> Confirm Password</label> <input
										type="password" class="form-control" id="confirm_password"
										name="confirm_password" required>
								</div>
								<button type="submit" class="btn btn-success btn-block">
									<span class="glyphicon glyphicon-ok"></span> Update Password
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>




		</div>

		<!-- /.container-fluid -->

	</div>

	<!-- /.content-wrapper -->

	<footer class="sticky-footer">
		<div class="container">
			<div class="text-center">
				<small>Copyright &copy; Your Website 2017</small>
			</div>
		</div>
	</footer>

	<!-- Scroll to Top Button -->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fa fa-angle-up"></i>
	</a>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper/popper.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/sb-admin.min.js"></script>
	<script src="personalInformationEvent.js"></script>
</body>

</html>
