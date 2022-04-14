package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class Student {
	
	private Integer studentId;
	private String name;
	private String email;
	private String contact;
	private String institute;
	private String dob;
	
	
	public Student() {}
	
	public Student(Integer studentId) {
		this.studentId = studentId;
	}
	
	public Student(Integer studentId, String name, String email, String contact, String institute, String dob) {
		super();
		this.studentId = studentId;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.institute = institute;
		this.dob = dob;
	}
	
	
	
	public Student(Integer studentId, String name, String email) {
		super();
		this.studentId = studentId;
		this.name = name;
		this.email = email;
	}



	//########################## Methods #############################################
	
	public ArrayList<Student> getAllStudent(Teacher teacher){
		Connection con = null;
		ArrayList<Student> students = new ArrayList<Student>();
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OTS?user=root&password=1234");

			String query = "select * from student s where s.student_id in (select student_id from teach_stud where teacher_id=? );";

			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, teacher.getTeacherId());
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				studentId=rs.getInt(1);
				name = rs.getString(2);
				email=rs.getString(3);
				Student student = new Student(studentId,name,email);
				students.add(student);
			}
		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}
		return students;
	}
	
	public boolean addStudent(Teacher teacher) {
		boolean check=false;
		Student st = new Student();
		
		Connection con = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OTS?user=root&password=1234");

			String query = "insert into student(name,email) value(?,?)";

			PreparedStatement pst = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, name);
			pst.setString(2, email);
			int res = pst.executeUpdate();
			if(res==1) {
				check=true;
				
				ResultSet rs = pst.getGeneratedKeys();
				if(rs.next()){
					st.setStudentId(rs.getInt(1));
				}
				
				
			}
			System.out.println(teacher.getEmail());
			TeacherStudent ts = new TeacherStudent(teacher,st);
			ts.saveTS();
			
		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}
		return check;
	}

	public Student(String name, String email) {
		super();
		this.name = name;
		this.email = email;
	}

	public Student(int int1) {
		// TODO Auto-generated constructor stub
	}

	public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

}
