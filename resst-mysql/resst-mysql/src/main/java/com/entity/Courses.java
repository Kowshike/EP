package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "courses")
public class Courses {
	@Id
	String ccode;
	String cname;
	String cdept;
	public String getCcode() {
		return ccode;
	}
	public void setCcode(String ccode) {
		this.ccode = ccode;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCdept() {
		return cdept;
	}
	public void setCdept(String cdept) {
		this.cdept = cdept;
	}
}
