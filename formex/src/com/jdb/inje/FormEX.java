package com.jdb.inje;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEX
 */
@WebServlet("/FormEX")
public class FormEX extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEX() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		//System.out.println("doPost가 실행되었습니다.");
		String name = request.getParameter("theName");
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		String[] hobby = request.getParameterValues("hobby");
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter writer = response.getWriter();
		writer.println("<html> <head><title>response</title> </head> <body>");
		writer.println("이름 : " + name + "<br>");
		writer.println("아이디 : " + id + "<br>" + "비밀번호 : " + password + "<br>");
		writer.println("취미 : " + Arrays.toString(hobby));
		writer.println("</body> </html>");
		//System.out.println(id +"\t"+ password);
	}

}