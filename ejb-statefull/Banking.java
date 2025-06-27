package com.model;

import javax.ejb.Stateful;

@Stateful
public class Banking implements BankingRemote {

	static int balance;
	
	@Override
	public void deposit(int amt) {
		balance += amt;
	}

	@Override
	public void withdraw(int amt) {
		balance -= amt;
	}

	@Override
	public int getbalance() {
		return balance;
	}

}
