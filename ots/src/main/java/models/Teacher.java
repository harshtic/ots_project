package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class Teacher {
	//Fields
	private Integer teacherId;
	private String name;
	private String email;
	private String password;
	private String contact;
	private String institute;
	private Status status;
	private String date;
	private String activationCode;
	
	//Constructors
	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Teacher(Integer teacherId, String name, String email, String password, String contact, String institute,
			Status status, String date) {
		super();
		this.teacherId = teacherId;
		this.name = name;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.institute = institute;
		this.status = status;
		this.date = date;
	}
	
	public Teacher(String name, String email, String password, String contact, String institute,String activationCode) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.institute = institute;
		this.activationCode = activationCode;
	}
	
	//Functions
	
	public static boolean activateAccount(String userName,String activationCode){
		Connection con = null;
		boolean flag = false;

		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ots?user=root&password=1234");
		
			String query = "update teacher set status_id=1,activation_code='' where name=? and activation_code=?";
			
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1,userName);
			pst.setString(2,activationCode);

			int res = pst.executeUpdate();
			
			if(res==1)
				flag = true;

		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}finally{
			try{con.close();}catch(SQLException e){ e.printStackTrace(); }
		}

		return flag;
	}
	
	
	public boolean login(String email,String pass) {
		boolean check=false;
		Connection con = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OTS?user=root&password=1234");

			String query = "select name,email,password,contact,institute from teacher where email=? and (password=? and status_id=1)";

			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				check=true;
				this.name=rs.getString(1);
				this.email=rs.getString(2);
				this.password=rs.getString(3);
				this.contact=rs.getString(4);
				this.institute=rs.getString(5);
			}
		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}
		return check;
	}
	
	public void saveTeacher() {
		
		Connection con = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OTS?user=root&password=1234");

			String query = "insert into teacher(name,email,password,contact,institute,activation_code) values (?,?,?,?,?,?)";

			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1,name);
			pst.setString(2,email);
			pst.setString(3,password);
			pst.setString(4,contact);
			pst.setString(5,institute);
			pst.setString(6,activationCode);
			pst.executeUpdate();
			System.out.println("success");
			
		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}
		
	}
	
	
	
	//Getter-Setter
	public Integer getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(Integer teacherId) {
		this.teacherId = teacherId;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
}
