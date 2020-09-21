package com.db.inje;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class DeleteMember
 */
@WebServlet("/DeleteMember")
public class DeleteMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Connection conn;
	private Statement stmt;
	private String driver;
	private String url;
	
	String sql;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("delete_id");
		
		sql = "delete from member where ID ='"+id+"'";
		try {
			driver = "oracle.jdbc.driver.OracleDriver";
			url = "jdbc:oracle:thin:@localhost:1521:XE";
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, "hr","hr1234");
			stmt = conn.createStatement();
			
			int i = stmt.executeUpdate(sql);
			if(i==1)
			{
				System.out.println("delete");
				response.sendRedirect("insert_member.jsp");
			}
			
		}catch(Exception e)
		{
			
		}finally {
			try {
				if(conn != null) {conn.close();}
				if(stmt != null) {conn.close();}
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
