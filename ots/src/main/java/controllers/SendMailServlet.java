package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utils.UserEmail;
import utils.EmailSender;

import models.Student;
import models.Teacher;
import utils.GenerateRandomString;

public class SendMailServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		Student student = new Student();
		HttpSession session = request.getSession();
		Teacher teacher = (Teacher)session.getAttribute("teacher");
		ArrayList<Student> students = student.getAllStudent(teacher);
		for(Student s : students) {
			 	String email= s.getEmail();
			 	String ukey = s.getEmail();
			    String upass = GenerateRandomString.getAlphaNumericString(10);
			    EmailSender.sendEmail(email,"Welcome to our Online Test System", UserEmail.userEmail(ukey,upass));
		}
		
		response.sendRedirect("Dashboard.jsp");
	}
}
