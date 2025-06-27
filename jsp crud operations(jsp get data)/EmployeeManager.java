package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmployeeManager {
	String url = "jdbc:mysql://localhost:3306/klu";
	String username = "root";
	String password = "Pwd@1292"; //MySQL DB Password
	String mysqldriver = "com.mysql.cj.jdbc.Driver";
	
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	//READ Operation
	public List<Employee> getData() throws Exception
	{
		Class.forName(mysqldriver);
		con = DriverManager.getConnection(url, username, password);
		pstmt = con.prepareStatement("select * from employee");
		List<Employee> list = new ArrayList<Employee>();
		ResultSet rs = pstmt.executeQuery();
		while(rs.next())
		{
			Employee E = new Employee();
			E.setEid(rs.getInt(1));
			E.setEname(rs.getString(2));
			
			list.add(E);
		}
		con.close();
		return list;
	}
}
