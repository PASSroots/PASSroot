<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<div class="modal fade" id="addCourseModal" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px;">
					<h5 class="mdoal-title">Add Course Data</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form role="form" action="#" method="post">
						<div class="form-group">
							<label for="add_course_id"><span
								class="glyphicon glyphicon-course"></span> Course Id</label> <input type="text"
								class="form-control" id="add_course_id" name="course_id"
								placeholder="Please input course id" required="required">
						</div>
						<div class="form-group">
							<label for="add_course_name"><span
								class="glyphicon glyphicon-course"></span> Name</label> <input type="text"
								class="form-control" id="add_course_name" name="course_name"
								placeholder="Please input course name" required="required">
						</div>					
						<div class="form-group">
							<label for="add_course_instructor"><span
								class="glyphicon glyphicon-instructor"></span> instructor</label> <input
								class="form-control" id="add_course_intructor" name="course_instructor"
								placeholder="Please input course instructor" required="required">
						</div>
						<div class="form-group">
							<label for="add_course_ta"><span
								class="glyphicon glyphicon-ta"></span> TA</label> <input
								class="form-control" id="add_course_ta" name="course_ta"
								placeholder="Please input course TA" required="required">
						</div>
						<div class="form-group">
							<label for="add_course_introduction"><span
								class="glyphicon glyphicon-introduction"></span> Introduction</label> <input
								class="form-control" id="add_course_introduction" name="course_introduction"
								placeholder="Please input course introduction" required="required">
						</div>
						<button type="submit" class="btn btn-success btn-block">
							<span class="glyphicon glyphicon-ok"></span> Add
						</button>
						<button type="submit" class="btn btn-danger btn-block"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> Cancel
						</button>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>