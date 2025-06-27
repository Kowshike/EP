package com.controller;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import com.model.BankingRemote;

@ManagedBean(name = "bank", eager = true)
public class Bank {

	int damt;
	int wamt;
	int bal;

	@EJB(lookup = "java:global/ejb-statefull/Banking!com.model.BankingRemote")
	BankingRemote BR;
	
	public void checkBalance()
	{
		bal = BR.getbalance();
	}
	
	public void callDeposit()
	{
		BR.deposit(damt);
		bal = BR.getbalance();
	}
	
	public void callWithdraw()
	{
		BR.withdraw(wamt);
		bal = BR.getbalance();
	}

	public int getDamt() {
		return damt;
	}

	public void setDamt(int damt) {
		this.damt = damt;
	}

	public int getWamt() {
		return wamt;
	}

	public void setWamt(int wamt) {
		this.wamt = wamt;
	}

	public int getBal() {
		return bal;
	}

	public void setBal(int bal) {
		this.bal = bal;
	}
	
	
}
