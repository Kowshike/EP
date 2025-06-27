package com.klu.jdbccs;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class OutParamDemo {

	public static void main(String[] args) throws Exception
	{
		// TODO Auto-generated method stub
		String url = "jdbc:mysql://localhost:3306/klu";
        String username = "root";
        String password = "Pwd@1292";
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
        CallableStatement cstmt = con.prepareCall("{CALL getCount(?)}");
        cstmt.execute();
        int count = cstmt.getInt(1);
        System.out.println("No of Records = " + count);

        con.close();
	}

}
