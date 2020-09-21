package com.db.inje;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class CheckMember
 */
@WebServlet("/CheckMember")
public class CheckMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Connection conn;
	private Statement stmt;
	private ResultSet rtset;
	private String driver;
	private String url;
	
	String sql = "select * from member";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();
		try {
			driver = "oracle.jdbc.driver.OracleDriver";
			url = "jdbc:oracle:thin:@localhost:1521:XE";
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, "hr","hr1234");
			stmt = conn.createStatement();
			rtset = stmt.executeQuery(sql);
			
			while(rtset.next())
			{
				String name = rtset.getString("name");
				String id = rtset.getString("id");
				String pw = rtset.getString("pw");
				String phone1 =rtset.getString("phone1");
				String phone2 =rtset.getString("phone2");
				String phone3 =rtset.getString("phone3");
				String gender = rtset.getString("gender");
				
				writer.println("<h1>Data</h1>");
				writer.println("NAME : " + name + "<br>" + "ID : " + id + "<br>" + "PW : " + pw + "<br>" + "Phone : " + phone1 + phone2  +
				phone3 + "<br>" + "Gender : " + gender);
				
			}
			writer.close();
		}catch(Exception e){
			
		}finally {
			try {
				if(stmt != null) stmt.close();
				if(conn != null) conn.close(); 
			}catch(Exception e) {
				
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
