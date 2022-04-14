package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Teacher;

public class TeacherLoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		
		Teacher teacher = new Teacher();
		boolean check=teacher.login(email,pass);
		if(check) {
			HttpSession session = request.getSession();
			session.setAttribute("teacher",teacher);
			session.setMaxInactiveInterval(1800);
			
			response.sendRedirect("Dashboard.jsp");
			}
		else {
			response.sendRedirect("login.jsp");
		}
	}
}
