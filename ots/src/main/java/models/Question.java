package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;

public class Question {
	private Integer questionId;
	private String question;
	private Integer marks;
	private String time;
	private Exam exam;
	private String answer;
	
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Question(Integer questionId, String question, Integer marks, String time, Exam exam) {
		super();
		this.questionId = questionId;
		this.question = question;
		this.marks = marks;
		this.time = time;
		this.exam = exam;
	}
	
	
	
	public Question(String question , String answer, Integer marks, String time,Exam exam) {
		super();
		this.question = question;
		this.marks = marks;
		this.time = time;
		this.answer = answer;
		this.exam = exam;
	}
	
	//############################### METHODS #################################################
	
public boolean saveQuestion(){
		boolean check=false;
		Connection con = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OTS?user=root&password=1234");

			String query = "insert into question(question,marks,time,answer,exam_id) values (?,?,?,?,?)";

			PreparedStatement pst = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, question);
			pst.setInt(2, marks);
			pst.setString(3, time);
			pst.setString(4, answer);
			pst.setInt(5, exam.getExamId());
			int res=pst.executeUpdate();
			if(res==1) {
				check=true;
				ResultSet rs = pst.getGeneratedKeys();
				if(rs.next()){
					this.questionId=rs.getInt(1);
				}
				System.out.println("add question successfully");
			}
			
		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}
		return check;
	}
	
	
	
	public Integer getQuestionId() {
		return questionId;
	}
	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public Integer getMarks() {
		return marks;
	}
	public void setMarks(Integer marks) {
		this.marks = marks;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Exam getExam() {
		return exam;
	}
	public void setExam(Exam exam) {
		this.exam = exam;
	}
}
