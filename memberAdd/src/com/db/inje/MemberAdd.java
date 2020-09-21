package com.db.inje;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberAdd
 */
@WebServlet("/MemberAdd")
public class MemberAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String sql;
    String driver = "oracle.jdbc.driver.OracleDriver";
    Connection conn;
    Statement stmt;
    ResultSet rtst;
    
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String uid = "hr" , upw = "hr1234";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		memberAdd(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		memberAdd(request, response);
	}
	
	private void memberAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String gender = request.getParameter("gender");
		
		sql = "insert into member values ('" + name +"','" + id +"','" + pw +"','" + phone1 + "','" + phone2 + "','" +
				phone3 + "','" + gender + "')";
		
		try {
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			
			int i = stmt.executeUpdate(sql);
			
			if(i==1) {
				System.out.println("Insert");
				response.sendRedirect("insert_member.jsp");
			}else {
				System.out.println("Failed insert");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(conn != null) {conn.close();}
				if(stmt != null) {conn.close();}
			}catch(Exception e) {
				
			}
		}
		
	}

}
