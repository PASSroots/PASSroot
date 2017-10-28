<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="model.course"%>
<%@ page import="model.CourseDBHelper"%>
<head>
<meta charset="UTF-8">
  <meta name="description" content="Free Web tutorials">
  <meta name="keywords" content="HTML,CSS,XML,JavaScript">
  <meta name="author" content="John Doe">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Courses</title>
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
	CourseDBHelper courseDBHelper = new CourseDBHelper();
	request.setCharacterEncoding("big5");
	String idString = request.getParameter("id");
	int id = idString == null || idString.equals("") ? 0 : Integer.parseInt(idString);
	String courseId = request.getParameter("course_id");
	String courseName = request.getParameter("courde_name");
	String instructor = request.getParameter("course_instructor");
	String ta = request.getParameter("course_ta");
	String introduction = request.getParameter("course_introduction");
	ArrayList<course> coursedatas = courseDBHelper.getAllData();
	if(id == 0){
		if(courseName != null){
			courseDBHelper.insertCourse(courseId, courseName, instructor, ta, introduction);
			response.sendRedirect("#");
		}
	}else{
		if(courseName != null)
			courseDBHelper.updateCourse(id, courseId, courseName, instructor, ta, introduction);
		else
			courseDBHelper.deleteCourse(id);
		response.sendRedirect("#");
	}
	%>
	
	<!--Navigation-->
	<%@ include file="navigation.jsp" %>
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs -->
			<ol class="breadcrumb">
				<li class="breadcrumb-item">
					<button class="btn btn-primary" id="btnAddCourse" type="button"
						onclick="addCourse()">Add Course</button>
				</li>
				<li class="breadcrumb-item"><button class="btn btn-success" id="btnEditCourse" type="button"
						onclick="editCourse()" disabled="disabled">Edit Course</button>
				</li>
				<li class="breadcrumb-item">
					<button class="btn btn-danger" id="btnDeleteCourse" type="button"
						onclick="deleteCourse()" disabled="disabled">Delete Course</button>
				</li>
			</ol>
			<!-- Example DataTables Card -->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i>Courses Data Table
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Instructor</th>
									<th>TA</th>
									<th>CourseIntroduction</th>
								</tr>								
							</thead>
							<tfoot>
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Instructor</th>
									<th>TA</th>
									<th>CourseIntroduction</th>
								</tr>								
							</tfoot>
							<tbody>
								<% 
								for(course course : coursedatas){
									out.println("<tr id=" + course.id + " onclick=\"courseUD('" + course.id + "', '" + course.courseId + "', '"
											+ course.name + "', '" + course.instructor + "', '" + course.ta + "', '" + course.introduction + "')\">");
									out.println("<td>" + course.courseId + "</td>");
									out.println("<td>" + course.name + "</td>");
									out.println("<td>" + course.instructor + "</td>");
									out.println("<td>" + course.ta + "</td>");
									out.println("<td>" + course.introduction + "</td>");
									out.println("</tr>");
								}
								%>
							</tbody>
						</table>
						
					</div>
				</div>
				<div class="card-footer small text-muted">
					Updated yesterday at 11:59 PM
				</div>
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
		
		<%@ include file="addCourseDialog.jsp"%>
		<%@ include file="editCourseDialog.jsp"%>
		<%@ include file="deleteCourseDialog.jsp"%>

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
		<script src="courseEvent.js"></script>
	</div>
</body>
</html>