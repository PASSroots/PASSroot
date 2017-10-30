package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CourseDBHelper {
	private static final String TABLE_NAME = "courses";
	private static final String COL_ID = "ID";
	private static final String COL_COURSE_ID = "course_id";
	private static final String COL_COURSE_NAME = "Name";
	private static final String COL_INSTRUCTOR_ID = "instructor_id";
	private static final String COL_TA_ID = "TA_id";
	private static final String COL_INTRODUCTION = "introduction";

	//private static final String ROLE_INSTRUCTOR = "instructor";

	private DBConnector dbconnector = new DBConnector();

	public ArrayList<course> getAllData() {
		ArrayList<course> result = new ArrayList<course>();
		ResultSet resultSet;
		try {
			String sql = "Select * From " + TABLE_NAME;
			resultSet = dbconnector.statement.executeQuery(sql);
			while(resultSet.next()) {
				course course = new course();
				course.id = resultSet.getInt(COL_ID);
				course.courseId = resultSet.getString(COL_COURSE_ID);
				course.name = resultSet.getString(COL_COURSE_NAME);
				course.instructor = resultSet.getString(COL_INSTRUCTOR_ID);
				course.ta = resultSet.getString(COL_TA_ID);
				course.introduction = resultSet.getString(COL_INTRODUCTION);

				result.add(course);
			}
			System.out.println("Get courses information success");
		} catch (Exception e) {
			System.out.println("Can not get courses information: " + e);
		}
		return result;
	}

	public void insertCourse(String courseId, String courseName, String instructor, String ta, String introduction) {
		String sql = "Insert Into " + TABLE_NAME + " (" + COL_COURSE_ID + ", "
		 			+ COL_COURSE_NAME + ", " + COL_INSTRUCTOR_ID + ", " + COL_TA_ID
					+ ", " + COL_INTRODUCTION + ") Value( ?, ?, ?, ?, ?)";
		try {
			PreparedStatement ps = dbconnector.connection.prepareStatement(sql);
			ps.setString(1, courseId);
			ps.setString(2, courseName);
			ps.setString(3, instructor);
			ps.setString(4, ta);
			ps.setString(5, introduction);
			ps.execute();
		} catch (Exception e) {
			System.out.println("Insert User Error: " + e);
		}
	}

	public void updateCourse(int id, String courseId, String courseName, String instructor, String ta, String introduction) {
		String sql = "Update " + TABLE_NAME + " Set " + COL_COURSE_ID + " = ?, " + COL_COURSE_NAME + " = ?, "
					+ COL_INSTRUCTOR_ID + " = ?, " + COL_TA_ID + " = ?, " + COL_INTRODUCTION 
					+ " = ? Where " + COL_ID + " = ? ";
		try {
			PreparedStatement ps = dbconnector.connection.prepareStatement(sql);
			ps.setString(1, courseId);
			ps.setString(2, courseName);
			ps.setString(3, instructor);
			ps.setString(4, ta);
			ps.setString(5, introduction);
			ps.setInt(6, id);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("Course Update Failed: " + e);
		}
	}

	public void deleteCourse(int id) {
		String sql = "Delete From " + TABLE_NAME + " Where " + COL_ID + " = " + id;
		try {
			dbconnector.statement.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println("");
		}
	}
}
