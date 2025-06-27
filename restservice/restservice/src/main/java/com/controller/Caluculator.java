package com.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.faces.bean.ManagedBean;

@ManagedBean(name="calc",eager=true)
public class Caluculator {
	int A,B;
	String result;
	public void callAdd() {
		try {
			URL url=new URL("http://localhost:8081/restservice/calc/add/"+A+"/"+B);
			HttpURLConnection con=(HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("Accept", "application/json");
			BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
			result=br.readLine();
		}
		catch(Exception E){
		     result=E.getMessage();
		}
	}
	public void callSub() {
		try {
			URL url=new URL("http://localhost:8081/restservice/calc/sub/"+A+"/"+B);
			HttpURLConnection con=(HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("Accept", "application/json");
			BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
			result=br.readLine();
		}
		catch(Exception E){
		     result=E.getMessage();
		}
	}
	public void callMul() {
		try {
			URL url=new URL("http://localhost:8081/restservice/calc/mul/"+A+"/"+B);
			HttpURLConnection con=(HttpURLConnection) url.openConnection();
			con.setRequestMethod("PUT");
			con.setRequestProperty("Accept", "application/json");
			BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
			result=br.readLine();
		}
		catch(Exception E){
		     result=E.getMessage();
		}
	}
	public void callDiv() {
		try {
			URL url=new URL("http://localhost:8081/restservice/calc/div/"+A+"/"+B);
			HttpURLConnection con=(HttpURLConnection) url.openConnection();
			con.setRequestMethod("DELETE");
			con.setRequestProperty("Accept", "application/json");
			BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
			result=br.readLine();
		}
		catch(Exception E){
		     result=E.getMessage();
		}
	}
	public int getA() {
		return A;
	}
	public void setA(int a) {
		A = a;
	}
	public int getB() {
		return B;
	}
	public void setB(int b) {
		B = b;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}

}
