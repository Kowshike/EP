package com.klu.jdbccs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class PreparedStatementDemo {

	public static void main(String[] args)throws Exception
	{
		// TODO Auto-generated method stub
		String url = "jdbc:mysql://localhost:3306/klu";
		String username = "root";
		String password = "Pwd@1292";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		PreparedStatement pstmt = con.prepareStatement("insert into employee values(?,?)");
		pstmt.setInt(1, 1004);
		pstmt.setString(2, "BBB");
		pstmt.execute();
		System.out.println("Record inserted successfully");
		con.close();
	}

}

