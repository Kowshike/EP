package com.model;

import java.util.List;

import javax.ejb.Remote;

@Remote
public interface FacultyService {
	public String saveData(int fid,String fname,String fdept)throws Exception ;
	public List<Faculty> getData() throws Exception;
	
}
