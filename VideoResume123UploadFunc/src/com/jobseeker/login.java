package com.jobseeker;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private static final long serialVersionUID = 1L;
	public String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	public String DB_URL="jdbc:mysql://localhost:3306/videoresume";
	public String USER = "root";
	public String PASS = "admin";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		 ResultSet rs = null;
		 Statement stmt = null;
		 Connection conn = null;
		try {
	         Class.forName("com.mysql.jdbc.Driver");
	         conn =  DriverManager.getConnection(DB_URL, USER, PASS);
	         stmt =  conn.createStatement();
	         String sql;
	         System.out.println("hello");
	         sql = "select * from jobseeker where Username='"+request.getParameter("Username")+"' AND password='"+request.getParameter("Password")+"'";
	         System.out.println(sql);
	        rs = stmt.executeQuery(sql);
	        System.out.println(rs);
	        System.out.println(rs.first());
	        //System.out.println(rs.getString(0));
	         
	      } catch(SQLException se) {
	         se.printStackTrace();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
		try {
			if(rs.first()) {
				response.sendRedirect("success.html");
			}else
			{
				response.sendRedirect("failure.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				stmt.close();
		         conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
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
