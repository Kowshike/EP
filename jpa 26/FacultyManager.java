package com.model;

import java.util.List;

import javax.ejb.Remote;

import com.entity.Faculty;

@Remote
public interface FacultyManager {
	public String saveData(Faculty F)throws Exception;
	public List<Faculty> getData()throws Exception;
	public String updateData(int fid, Faculty F) throws Exception;
	public String deleteData(int fid)throws Exception;
}
