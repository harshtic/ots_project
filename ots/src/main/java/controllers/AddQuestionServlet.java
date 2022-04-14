package controllers;

import java.io.IOException;
import java.sql.Time;

import models.Exam;
import models.Option;
import models.Question;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddQuestionServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		
		request.getRequestDispatcher("nextStep.jsp").forward(request, response);
		
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		
		String question = request.getParameter("question");
		String[] options = request.getParameterValues("option");
		String answer = request.getParameter("answer");
		int marks = Integer.parseInt(request.getParameter("marks"));
		String time = request.getParameter("time");
		int examId = Integer.parseInt(request.getParameter("examId"));
		Exam exam = new Exam(examId);
	
		Question q = new Question(question,answer,marks,time,exam);
		if(q.saveQuestion()){
			Option.saveOption(q.getQuestionId(),options);
			request.getRequestDispatcher("nextStep.jsp").forward(request, response);
		}
	}
}
