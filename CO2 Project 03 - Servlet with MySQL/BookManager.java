package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookManager {
	String url = "jdbc:mysql://localhost:3306/klu";
	String username = "root";
	String password = "Pwd@1292"; //MySQL DB Password
	
	public List<Book> getData() throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		PreparedStatement pstmt = con.prepareStatement("select * from book");
		ResultSet rs = pstmt.executeQuery();
		List<Book> list = new ArrayList<Book>();
		while(rs.next())
		{
			Book B = new Book();
			B.setId(rs.getInt(1));
			B.setTitle(rs.getString(2));
			B.setPrice(rs.getDouble(3));
			
			list.add(B);
		}
		con.close();
		return list;
	}
}

