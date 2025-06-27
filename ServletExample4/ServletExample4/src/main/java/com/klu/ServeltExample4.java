package com.klu;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletExample4")
public class ServeltExample4 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String courses=request.getParameter("courses");

        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3305/mydb","root","");
            PreparedStatement ps=con.prepareStatement("insert into employee(name,email,courses) values(?,?,?)");
            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,courses);
            ps.executeUpdate();
            out.println("<script>alert('Employee added successfully!')</script>");
            request.getRequestDispatcher("reg.jsp").include(request,response);
        }catch(Exception e){
            e.printStackTrace();
            out.println("<script>alert('Error adding employee!')</script>");
            request.getRequestDispatcher("reg.jsp").include(request,response);
        }
    }
}