package com.klu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class GenericSevletDemo extends GenericServlet {

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		arg1.setContentType("text/html");
		PrintWriter pw = arg1.getWriter();
		Date D = new Date();
		pw.println("Servlet is created using GenericServlet Class @ " + D.toString());
	}

}
