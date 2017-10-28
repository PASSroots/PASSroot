<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<div class="modal fade" id="deleteCourseModal" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="pdeleteing: 35px 50px;">
					<h5 class="mdoal-title">Delete Course Data</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="pdeleteing: 40px 50px;">
					<form role="form" action="#" method="post">
						<div class="form-group">
							<label for="delete_id"><span
								class="glyphicon glyphicon-id"></span> Id</label> <input type="number"
								class="form-control" id="delete_id" name="id" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="delete_course_id"><span
								class="glyphicon glyphicon-id"></span> Course Id</label> <input type="text"
								class="form-control" id="delete_course_id" name="course_id" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="delete_course_name"><span
								class="glyphicon glyphicon-heart"></span> Name</label> <input type="text"
								class="form-control" id="delete_course_name" name="course_name" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="delete_course_instructor"><span
								class="glyphicon glyphicon-heart"></span> Instructor </label> <input type="text"
								class="form-control" id="delete_course_instructor" name="course_instructor" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="delete_course_ta"><span
								class="glyphicon glyphicon-heart"></span>TA </label> <input type="text"
								class="form-control" id="delete_course_ta" name="course_ta" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="delete_course_introduction"><span
								class="glyphicon glyphicon-heart"></span> Introduction </label> <input type="text"
								class="form-control" id="delete_course_introduction" name="course_introduction" disabled="disabled">
						</div>
						<button type="submit" class="btn btn-success btn-block">
							<span class="glyphicon glyphicon-ok"></span> Delete
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





