package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import models.Teacher;
import models.Student;

import org.jasypt.util.password.StrongPasswordEncryptor;

public class TeacherStudent {
	
	private Teacher teacher;
	private Student student;
	
	public TeacherStudent() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TeacherStudent(Teacher teacher, Student student) {
		super();
		this.teacher = teacher;
		this.student = student;
	}
	
	
	//########################## Methods ################################
	
	public void saveTS() {
		Connection con = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OTS?user=root&password=1234");

			String query = "insert into teach_stud(teacher_id,student_id) value(?,?)";

			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, teacher.getTeacherId());
			pst.setInt(2, student.getStudentId());
			pst.executeUpdate();
			System.out.println("save");
		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	
}
