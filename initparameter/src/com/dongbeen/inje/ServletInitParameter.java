package com.dongbeen.inje;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletInitParameter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletInitParameter() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String path = getInitParameter("path");
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter wt = response.getWriter();
		
		wt.println("<html> <head></head> <body> "
				+ "아이디 : " + id + "<br> 비밀번호 :  " + pw + " <br> 경로 : " + path + "</body> </html>");
		
		wt.close();
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
