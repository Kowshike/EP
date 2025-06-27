package com.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import com.entity.Faculty;
import com.model.FacultyManager;

@ManagedBean(name = "faculty", eager = true)
public class FacultyController {
	int fid;
	String fname;
	String fdept;
	
	String response;
	
	List<Faculty> list;
	
	@EJB(lookup = "java:global/jpa/FacultyDAO!com.model.FacultyManager")
	FacultyManager FM;
	
	public void callDeleteData()
	{
		try
		{
			response = FM.deleteData(fid);
		}catch(Exception e)
		{
			response = e.getMessage();
		}
	}
	
	public void callUpdateData()
	{
		Faculty F=new Faculty();
		F.setFid(fid);
		F.setFname(fname);
		F.setDept(fdept);
		try
		{
			response = FM.updateData(fid, F);
		}catch(Exception e)
		{
			response = e.getMessage();
		}
	}
	
	
	public void callSaveData()
	{
		Faculty F=new Faculty();
		F.setFid(fid);
		F.setFname(fname);
		F.setDept(fdept);
		try
		{
			response = FM.saveData(F);
		}catch(Exception e)
		{
			response = e.getMessage();
		}
	}
	

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getFdept() {
		return fdept;
	}

	public void setFdept(String fdept) {
		this.fdept = fdept;
	}

	public String getResponse() {
		return response;
	}

	public void setResponse(String response) {
		this.response = response;
	}


	public List<Faculty> getList() {
		try
		{
			list = FM.getData();
		}catch(Exception e) 
		{
			response = e.getMessage();
		}
		return list;
	}


	public void setList(List<Faculty> list) {
		this.list = list;
	}
}
