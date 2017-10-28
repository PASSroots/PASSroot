<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<div class="modal fade" id="addUserModal" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px;">
					<h5 class="mdoal-title">Add User Data</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<form role="form" action="#" method="post">
						<div class="form-group">
							<label for="add_user_id"> User Id </label> <input type="text"
								class="form-control" id="add_user_id" name="user_id"
								placeholder="Please input user id" required="required">
						</div>
						<div class="form-group">
							<label for="add_user_name"> Name </label> <input type="text"
								class="form-control" id="add_user_name" name="user_name"
								placeholder="Please input user name" required="required">
						</div>
						<div class="form-group">
							<label for="add_user_name"> Role </label> <select
								class="form-control" id="add_user_role" name="user_role">
								<option value="administrator">Administrator</option>
								<option value="instructor">Instructor</option>
								<option value="student">Student</option>
								<option value="teaching assistant">TA</option>
							</select>
						</div>
						<div class="form-group">
							<label for="add_user_email">> Email </label> <input
								class="form-control" id="add_user_email" type="email"
								aria-describedby="emailHelp" name="user_email"
								placeholder="Please input user email" required="required">
						</div>
						<button type="submit" class="btn btn-success btn-block">> Add </button>
						<button type="submit" class="btn btn-danger btn-block"
							data-dismiss="modal"> Cancel </button>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>





