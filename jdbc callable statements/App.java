package com.klu.jdbccs;

import java.sql.*;

public class App 
{
    public static void main( String[] args ) throws Exception
    {
        String url = "jdbc:mysql://localhost:3306/klu";
        String username = "root";
        String password = "Pwd@1292";
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url, username, password);
        CallableStatement cstmt = con.prepareCall("{CALL getDetails()}");
        ResultSet rs = cstmt.executeQuery();
        while(rs.next())
        {
        	System.out.println(rs.getInt(1) + "\t" + rs.getString(2));
        }
        con.close();
    }
}
