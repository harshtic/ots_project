package controllers;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Exam;

public class CreateExamServlet extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		request.getRequestDispatcher("createExam.jsp").forward(request, response);		
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		String examName = request.getParameter("exam_name");
		String examDate = request.getParameter("exam_date");
		String startTime = request.getParameter("start_time");
		String endTime = request.getParameter("end_time");
		
		Exam exam = new Exam(examName,examDate,startTime,endTime);
		
		if(exam.saveExam()) {
			HttpSession session = request.getSession();
			session.setAttribute("exam", exam);
			request.getRequestDispatcher("nextStep.jsp").forward(request, response);
		}
		else {
			
			response.sendRedirect("createExam.jsp");
		}
	}
}
