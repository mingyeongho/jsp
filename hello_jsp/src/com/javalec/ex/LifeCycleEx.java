package com.javalec.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LifeCycleEx
 */
@WebServlet("/LifeCycleEx")
public class LifeCycleEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LifeCycleEx() {
        super();
        // TODO Auto-generated constructor stub
    }

    // doGet(), doPost(), service()는 요청 시 매번 실행
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		System.out.println("doPost");
	}

	// 최초 한 번 실행
	@Override
	@PostConstruct
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		System.out.println("init");
	}
	
	// 마지막 한 번 실행
	@Override
	@PreDestroy
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		System.out.println("destory");
	}
	
	
}
