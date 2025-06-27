package com.controller;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import com.entity.Student;
import com.model.StudentRemote;

@ManagedBean(name="stu",eager = true)
public class Student_EJB {
	int sid;
	String sname;
	String response;
	List<Student> ls;
	@EJB(lookup = "java:global/jpa-crud/StudentModel!com.model.StudentRemote")
	StudentRemote SR;
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getResponse() {
		return response;
	}
	public void setResponse(String response) {
		this.response = response;
	}
	public List<Student> getLs() {
		try {
			ls=SR.retrive();
		}
		catch(Exception e) {
			response=e.getMessage();
		}
		return ls;
	}
	public void setLs(List<Student> ls) {
		this.ls = ls;
	}
	
	public void jpa_insert() {
		try {
			Student st = new Student();
			st.setId(this.sid);
			st.setName(this.sname);
			response=SR.insert(st);
		}
		catch(Exception e) {
		response=e.getMessage()	;
		}
	}
	public void jpa_update() {
		try {
			Student st = new Student();
			st.setId(this.sid);
			st.setName(this.sname);
			response=SR.update(st);
		}
		catch(Exception e) {
			response=e.getMessage()	;
		}
	}
	public void jpa_delete() {
		try {
			Student st = new Student();
			st.setId(this.sid);
			st.setName(this.sname);
			response=SR.delete(st);
		}
		catch(Exception e) {
			response=e.getMessage()	;
		}
	}
}
