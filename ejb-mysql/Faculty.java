package com.model;

import java.io.Serializable;

public class Faculty implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int fid;
	String fname;
	String fdept;
	
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
}
