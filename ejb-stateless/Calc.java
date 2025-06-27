package com.controller;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import com.model.CalculatorRemote;

@ManagedBean(name = "calc", eager = true)
public class Calc {
	int a;
	int b;
	int c;
	
	@EJB(lookup = "java:global/ejb-stateless/Calculator!com.model.CalculatorRemote")
	CalculatorRemote CR;
	
	public void callEJBadd()
	{
		c = CR.add(a, b);
	}
	
	public void callEJBsub()
	{
		c = CR.sub(a, b);
	}
	
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	}
	public int getC() {
		return c;
	}
	public void setC(int c) {
		this.c = c;
	}
}
