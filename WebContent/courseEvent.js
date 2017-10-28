function addCourse() {
	$('#addCourseModel').model();
}

function editCourse() {
	$('#editCourseModel').Model();
}

function deleteCourse(ProductId, ProductName, ProduectPrice) {
	$('#deleteCourseModel').Model();
}

function courseUD(id, courseId, courseName, instructor, ta, introduction){
	var dataTable = document.getElement("dataTable");
	var rows = dataTable.getElementsByTagName("tr");
	for (var i = 0; i< rows.length; i++){
		rows[i].style.backgroundColor = "#FFFFFF";
		rows[i].style.color = "#000000";
	}
	document.getElementById(id).style.backgroundColor = "#0000FF";
	document.getElementById(id).style.color = "#FFFFFF";
	document.getElementById("edit_id").value = id;
	document.getElementById("edit_course_id").value = courseId;
	document.getElementById("edit_course_name").value = courseName;
	document.getElementById("edit_course_instructor").value = instructor;
	document.getElementById("edit_course_ta").value = ta;
	document.getElementById("edit_course_introduction").value = introduction;
	document.getElementById("btnEditCourse").disabled = false;
	document.getElementById("delete_id").value = id;
	document.getElementById("delete_course_id").value = courseId;
	document.getElementById("delete_course_name").value = courseName;
	document.getElementById("delete_course_instructor").value = instructor;
	document.getElementById("edit_course_ta").value = ta;
	document.getElementById("delete_course_introduction").value = introduction;
	document.getElementById("btnDeleteCourse").disabled = false;
}