package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Exam {
	private Integer examId;
	private String examName;
	private String examDate;
	private String startTime;
	private String endTime;
	
	
	public Exam() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Exam(String examName, String examDate, String startTime, String endTime) {
		super();

		this.examName = examName;
		this.examDate = examDate;
		this.startTime = startTime;
		this.endTime = endTime;
	}
	
	public boolean saveExam() {
		Connection con = null;
		boolean flag = false;

		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ots?user=root&password=1234");
		
			String query = "insert into exam(exam,start_time,end_time,exam_date,teacher_id) values (?,?,?,?,?)";

			PreparedStatement pst = con.prepareStatement(query);
			System.out.println(examName+"===== "+examDate);
			
			pst.setString(1, examName);
			pst.setString(2, startTime);
			pst.setString(3, endTime);
			pst.setString(4, examDate);
			pst.setInt(5, 1);
			int res = pst.executeUpdate();
			if(res==1) {
				flag = true;
			}

		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}
		System.out.println(flag);
		return flag;
	}
	
	
	
	public Integer getExamId() {
		return examId;
	}
	public void setExamId(Integer examId) {
		this.examId = examId;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	public String getExamDate() {
		return examDate;
	}
	public void setExamDate(String examDate) {
		this.examDate = examDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	
	
	
	

}
