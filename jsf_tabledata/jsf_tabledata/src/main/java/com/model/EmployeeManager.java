package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmployeeManager {
	
	String url="jdbc:mysql://localhost:3305/klu";
	String dbusername="root";
	String password="Kowshike@123";
	String driver="com.mysql.cj.jdbc.Driver";
	Connection con =null;
	PreparedStatement stmt =null;
	public List<Employee> getData() throws Exception
	{
		Class.forName(driver);
		con = DriverManager.getConnection(url, dbusername, password);
		stmt = con.prepareStatement("SELECT * FROM EMPLOYEE");
		ResultSet rs = stmt.executeQuery();
		List<Employee> list = new ArrayList<Employee>();
		while(rs.next())
		{
			Employee E = new Employee();
			E.setEid(rs.getInt(1));
			E.setEname(rs.getString(2));
			E.setSalary(rs.getDouble(3));
			
			list.add(E);
		}
		con.close();
		return list;
	}
}
