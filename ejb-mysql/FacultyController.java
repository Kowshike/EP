package com.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import com.model.Faculty;
import com.model.FacultyService;

@ManagedBean(name = "faculty", eager = true)
public class FacultyController {
	int fid;
	String fname;
	String fdept;
	
	String res;
	
	List<Faculty> list;

	@EJB(lookup = "java:global/ejb-mysql/FacultyManager!com.model.FacultyService")
	FacultyService FS;
	
	public void callSaveData()
	{
		try
		{
			res = FS.saveData(fid, fname, fdept);
		}catch(Exception e)
		{
			res = e.getMessage();
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

	public String getRes() {
		return res;
	}

	public void setRes(String res) {
		this.res = res;
	}

	public List<Faculty> getList() {
		try
		{
			list = FS.getData();
		}catch (Exception e) 
		{
			res = e.getMessage();
		}
		return list;
	}

	public void setList(List<Faculty> list) {
		this.list = list;
	}
}
