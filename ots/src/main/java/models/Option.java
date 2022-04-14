package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Option {
	private Integer optionId;
	private String option;
	private Question question;
	public Option() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Option(Integer optionId, String option, Question question) {
		super();
		this.optionId = optionId;
		this.option = option;
		this.question = question;
	}
	
	
	//methos
	
	public static void saveOption(int question_id,String[] options) {
		Connection con = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OTS?user=root&password=1234");

			String query = "insert into options (question_id,options) values(?,?)";
			
			PreparedStatement pst = con.prepareStatement(query);
			int i=1;
			
			for(String s : options) {
				pst.setInt(1, question_id);
				pst.setString(2, s);
				pst.executeUpdate();
			}
		
			System.out.println("option add succesfully");
			
			
		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	
	public Integer getOptionId() {
		return optionId;
	}
	public void setOptionId(Integer optionId) {
		this.optionId = optionId;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	
	

}
