package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Employee;
import com.model.EmployeeManager;

/**
 * Servlet implementation class SaveEmployee
 */
public class SaveEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		int eid = Integer.parseInt(request.getParameter("eid"));
		String ename = request.getParameter("ename");
		
		Employee E = new Employee();
		E.setEid(eid);
		E.setEname(ename);
		
		EmployeeManager EM = new EmployeeManager();
		String ack="";
		try
		{
			ack = EM.saveData(E);
		}catch(Exception e)
		{
			ack = e.getMessage();
		}
		pw.println(ack);
		RequestDispatcher rd = request.getRequestDispatcher("adddata.jsp");
		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
