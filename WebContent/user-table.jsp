<!DOCTYPE html>
<html lang="en">
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="model.User"%>
<%@ page import="model.UserDBHelper"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Users</title>
<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">

	<%
		if (session.getAttribute("userId") == null) {
			response.sendRedirect("login.jsp");
		}
		UserDBHelper userDBHelper = new UserDBHelper();
		request.setCharacterEncoding("big5");
		String idString = request.getParameter("id");
		int id = idString == null || idString.equals("") ? 0 : Integer.parseInt(idString);
		String userId = request.getParameter("user_id");
		String userName = request.getParameter("user_name");
		String userPassword = request.getParameter("user_password");
		String userRole = request.getParameter("user_role");
		String userEmail = request.getParameter("user_email");
		ArrayList<User> userDatas = userDBHelper.getAllData();
		if (id == 0) {
			if (userName != null) {
				userDBHelper.insertUser(userId, userName, userRole, userEmail);
				response.sendRedirect("#");
			}
		} else {
			if (userName != null) {
				userDBHelper.updateUser(id, userId, userName, userPassword, userRole, userEmail);
			} else {
				userDBHelper.deleteUser(id);
			}
			response.sendRedirect("#");
		}
	%>

	<!-- Navigation-->
	<%@ include file="navigation.jsp"%>
	<div class="content-wrapper">

		<div class="container-fluid">
			<!-- Breadcrumbs-->

			<button class="btn btn-primary" id="btnAddUser" type="button"
				onclick="addUser()">Add User</button>
			<button class="btn btn-success" id="btnEditUser" type="button"
				onclick="editUser()" disabled="disabled">Edit User</button>
			<button class="btn btn-danger" id="btnDeleteUser" type="button"
				onclick="deleteUser()" disabled="disabled">Delete User</button>
			<!-- Example DataTables Card-->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i> Users Data Table
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Password</th>
									<th>Role</th>
									<th>Email</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Password</th>
									<th>Role</th>
									<th>Email</th>
								</tr>
							</tfoot>
							<tbody>
								<%
									for (User user : userDatas) {
										out.println("<tr id=" + user.id + " onclick=\"userUD('" + user.id + "', '" + user.userId + "', '"
												+ user.name + "', '" + user.password + "', '" + user.role + "', '" + user.email + "')\">");
										out.println("<td>" + user.userId + "</td>");
										out.println("<td>" + user.name + "</td>");
										out.println("<td>" + user.password + "</td>");
										out.println("<td>" + user.role + "</td>");
										out.println("<td>" + user.email + "</td>");
										out.println("</tr>");
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card-footer small text-muted">Updated yesterday at
					11:59 PM</div>
			</div>
		</div>
		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->
		<footer class="sticky-footer">
			<div class="container">
				<div class="text-center">
					<small>Copyright © Your Website 2017</small>
				</div>
			</div>
		</footer>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>


		<%@ include file="addUserDialog.jsp"%>
		<%@ include file="editUserDialog.jsp"%>
		<%@ include file="deleteUserDialog.jsp"%>

		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/popper/popper.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Page level plugin JavaScript-->
		<script src="vendor/datatables/jquery.dataTables.js"></script>
		<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin.min.js"></script>
		<!-- Custom scripts for this page-->
		<script src="js/sb-admin-datatables.min.js"></script>
		<script src="userEvent.js"></script>
	</div>
</body>

</html>
