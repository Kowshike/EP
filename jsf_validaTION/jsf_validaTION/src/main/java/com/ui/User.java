package com.ui;

import javax.faces.bean.ManagedBean;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

@ManagedBean(name="user",eager = true)
public class User {
	@Size(min=1)
	String name;
	@Min(18)
	@Max(30)
	int age;
	@Size(min=10,max=10)
	String mobilenumber;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	

}
