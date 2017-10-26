function addUser() {
	$("#addUserModal").modal();
}

function editUser() {
	$("#editUserModal").modal();
}

function deleteUser(ProductId, ProductName, ProductPrice) {
	$("#deleteUserModal").modal();
}

function userUD(id, userId, userName, userPassword, userRole, userEmail) {
	var dataTable = document.getElementById("dataTable");
	var rows = dataTable.getElementsByTagName("tr");
	for (var i = 0; i < rows.length; i++) {
		rows[i].style.backgroundColor = "#FFFFFF";
		rows[i].style.color = "#000000";
	}
	document.getElementById(id).style.backgroundColor = "#0000FF";
	document.getElementById(id).style.color = "#FFFFFF";
	document.getElementById("edit_id").value = id;
	document.getElementById("edit_user_id").value = userId;
	document.getElementById("edit_user_name").value = userName;
	document.getElementById("edit_user_password").value = userPassword;
	document.getElementById("edit_user_role").value = userRole;
	document.getElementById("edit_user_email").value = userEmail;
	document.getElementById("btnEditUser").disabled = false;
	document.getElementById("delete_id").value = id;
	document.getElementById("delete_user_id").value = userId;
	document.getElementById("delete_user_name").value = userName;
	document.getElementById("delete_user_password").value = userPassword;
	document.getElementById("delete_user_role").value = userRole;
	document.getElementById("delete_user_email").value = userEmail;
	document.getElementById("btnDeleteUser").disabled = false;
}