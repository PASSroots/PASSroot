<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

	<div class="modal fade" id="deleteUserModal" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="pdeleteing: 35px 50px;">
					<h5 class="mdoal-title">Delete User Data</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="pdeleteing: 40px 50px;">
					<form role="form" action="#" method="post">
						<div class="form-group">
							<label for="delete_id"> Id </label> <input type="number"
								class="form-control" id="delete_id" name="id" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="delete_user_id"> User Id </label> <input type="text"
								class="form-control" id="delete_user_id" name="user_id" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="delete_user_name"> Name </label> <input type="text"
								class="form-control" id="delete_user_name" name="user_name" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="delete_user_password"> Password </label> <input type="text"
								class="form-control" id="delete_user_password" name="user_password" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="delete_user_role"> Role </label>
							<input class="form-control" id="delete_user_role" name="user_role" disabled="disabled">
						</div>
						<div class="form-group">
							<label for="delete_user_email"> Email </label> <input
								class="form-control" id="delete_user_email" type="email"
								aria-describedby="emailHelp" name="user_email" disabled="disabled">
						</div>
						<button type="submit" class="btn btn-success btn-block"> Delete </button>
						<button type="submit" class="btn btn-danger btn-block"
							data-dismiss="modal"> Cancel </button>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>
</html>





