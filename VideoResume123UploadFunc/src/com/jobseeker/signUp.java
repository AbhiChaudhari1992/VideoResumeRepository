package com.jobseeker;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import com.mysql.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class signUp
 */
@WebServlet("/signUp")
public class signUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	public String DB_URL = "jdbc:mysql://localhost:3306/videoresume";
	public String USER = "root";
	public String PASS = "admin";   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Statement stmt = null;
		Connection conn = null;
		try {
			System.out.println("asdasdasd");
	         Class.forName("com.mysql.jdbc.Driver");
	         System.out.println("after jdbc");
	         conn =  DriverManager.getConnection(DB_URL, USER, PASS);
	         stmt =  conn.createStatement();
	         String sql;
	         System.out.println("hello");
	         sql = "INSERT INTO jobseeker VALUES(" + "'" + request.getParameter("username") + "'," + "'"
						+ request.getParameter("firstName") + "'," + "'" + request.getParameter("lastName") + "'," + "'"
						+ request.getParameter("jid") + "'," + "'" + request.getParameter("personalEmail") + "'," + "'"
						+ request.getParameter("phoneNumber") + "'," + "'" + request.getParameter("address") + "'," + "'"
						+ request.getParameter("password") + "'";
	         System.out.println(stmt);
	         if(stmt.executeUpdate(sql) > 0) {
					response.sendRedirect("success.jsp");
				}else
				{
					response.sendRedirect("failureReg.jsp");
				}
	        ;
	      } catch(SQLException se) {
	         se.printStackTrace();
	      } catch(Exception e) {
	         e.printStackTrace();
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
