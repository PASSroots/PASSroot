function notifyUpdateEmail() {
	alert("Email is updated");
}

function checkPassword(isSame) {
	var newPassword = document.getElementById("new_password").value;
	var confirmPassword = document.getElementById("confirm_password").value;
	if(newPassword == confirmPassword){
		alert("Success: Password is updated");
	}else{
		alert("Warning: New Password is different from Confirm Password");
	}
}