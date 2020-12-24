package com.javalec.ex;

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Modified
 */
@WebServlet("/Modified")
public class Modified extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private Connection connection;
	private Statement statement;
	private ResultSet resultSet;
	String name, id, pw, phone2, phone3;
	
	HttpSession httpSession;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Modified() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("EUC-KR");
		httpSession = request.getSession();
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");
		
		String updateQuery = "update member set name = '" + name + "', pw = '" + pw + "', phone2 = '" + phone2 + "', phone3 = '" + phone3 + "'";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			statement = connection.createStatement();
			resultSet = statement.executeQuery(updateQuery);
			System.out.println("Sign in");
			response.sendRedirect("login.html");
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("failure");
			response.sendRedirect("modified.jsp");
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				
			}
		}
	}

}
