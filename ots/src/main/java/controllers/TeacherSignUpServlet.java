package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Teacher;
import utils.GoogleCaptcha;
import utils.ActivationCode;
import utils.EmailMessages;
import utils.EmailSender;

public class TeacherSignUpServlet extends HttpServlet {
	private static final String ActivateCode = null;

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {
		
		String captchaResponse = request.getParameter("g-recaptcha-response");
		
		
		boolean flag = GoogleCaptcha.checkRecaptcha(captchaResponse);
		System.out.println(flag);
		
		if(flag) {
			String tname = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String contact = request.getParameter("contact");
			String institute = request.getParameter("institute");
			String activationCode = ActivationCode.generateActivationCode();
			
			
			
			Teacher t = new Teacher(tname,email,password,contact, institute,activationCode);
			t.saveTeacher();
			String msg = EmailMessages.getAccountActivationMail(tname, activationCode);
			EmailSender.sendEmail(email,"ONLINE TEST SYSTEM ",msg);
			
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	
		
	}

}
