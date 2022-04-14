package controllers;

import java.io.IOException;
import utils.UserEmail;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Exam;
import models.Option;
import models.Question;
import models.Student;
import models.Teacher;
import utils.GenerateRandomString;
import utils.EmailSender;
public class AddStudentServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		String email = request.getParameter("email");
		String name = request.getParameter("name");
	   Student student = new Student(name,email);
	   	HttpSession session = request.getSession();
		Teacher teacher = (Teacher)session.getAttribute("teacher");
		System.out.println(teacher.getEmail());
		
	   if(student.addStudent(teacher)) {
		   response.sendRedirect("Add_student.jsp");
	   }
	}
}
