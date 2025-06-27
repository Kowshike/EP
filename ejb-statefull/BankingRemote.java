package com.model;

import javax.ejb.Remote;

@Remote
public interface BankingRemote {
	public void deposit(int amt);
	public void withdraw(int amt);
	public int getbalance();
}
