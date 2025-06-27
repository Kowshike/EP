package com.controller;

import java.util.List;

import javax.faces.bean.ManagedBean;

import com.model.Employee;
import com.model.EmployeeManager;

@ManagedBean(name = "emp",eager=true)
public class EmployeeController {
	List<Employee> list;

	public List<Employee> getList() {
		EmployeeManager em = new EmployeeManager();
		
		try {
			list=em.getData();
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return list;
	}

	public void setList(List<Employee> list) {
		this.list = list;
	}
	

}
