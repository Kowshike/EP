package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;

@Stateless
public class FacultyManager implements FacultyService {
	
	@Override
	public String saveData(int fid, String fname, String fdept) throws Exception {
		String url = "jdbc:mysql://localhost:3306/klu";
		String dbuser = "root";
		String dbpwd = "Pwd@1292";
		Connection con = DriverManager.getConnection(url, dbuser, dbpwd);
		PreparedStatement stmt = con.prepareStatement("INSERT INTO FACULTY VALUES(?,?,?)");
		stmt.setInt(1, fid);
		stmt.setString(2, fname);
		stmt.setString(3, fdept);
		stmt.execute();
		con.close();
		return "Record Inserted Successfully";
	}

	@Override
	public List<Faculty> getData() throws Exception {
		String url = "jdbc:mysql://localhost:3306/klu";
		String dbuser = "root";
		String dbpwd = "Pwd@1292";
		Connection con = DriverManager.getConnection(url, dbuser, dbpwd);
		PreparedStatement stmt = con.prepareStatement("SELECT * FROM FACULTY");
		ResultSet rs = stmt.executeQuery();
		List<Faculty> list = new ArrayList<Faculty>();
		while(rs.next())
		{
			Faculty F = new Faculty();
			F.setFid(rs.getInt(1));
			F.setFname(rs.getString(2));
			F.setFdept(rs.getString(3));
			
			list.add(F);
		}
		con.close();
		return list;
	}

}
