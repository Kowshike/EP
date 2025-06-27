package com.controller;

import javax.faces.bean.ManagedBean;

import com.entity.Faculty;
import com.model.FacultyManager;

@ManagedBean(name="faculty",eager=true)
public class FacultyController {
	int fid;
	String fname,fdept;
	String response;
	
	FacultyManager FM;
	public void callSaveData() {
		Faculty F=new Faculty();
		F.setFid(fid);
		F.setDept(fdept);
		F.setFname(fname);
		try {
			response=FM.saveData(F);
		}
		catch(Exception e) {
		     response=e.getMessage();	
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

}
