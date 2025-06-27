package com.model;

import java.util.List;

import javax.ejb.Remote;

import com.entity.Student;

@Remote
public interface StudentRemote {
	public String insert(Student s) throws Exception;
	public String update(Student s) throws Exception;
	public String delete(Student s) throws Exception;
	public List<Student> retrive() throws Exception;
}
