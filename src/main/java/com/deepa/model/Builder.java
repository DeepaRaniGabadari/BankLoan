package com.deepa.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="builder")
public class Builder {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int builderid;
	
	@Column(name="buildername")
	private String buildername;

	@Column(name="address")
	private String address;
	
	@Column(name="regno")
	private int regno;
	
	@Column(name="ssn")
    private int ssn;
	
	@Column(name="phone")
	private int phone;
	
	@Column(name="email")
    private String email;
	
	@Column(name="apfno")
    private String apfno;
	
	@Column(name="reason")
    private String reason;

	public int getBuilderid() {
		return builderid;
	}

	public void setBuilderid(int builderid) {
		this.builderid = builderid;
	}

	public String getBuildername() {
		return buildername;
	}

	public void setBuildername(String buildername) {
		this.buildername = buildername;
	}

	

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getRegno() {
		return regno;
	}

	public void setRegno(int regno) {
		this.regno = regno;
	}

	public int getSsn() {
		return ssn;
	}

	public void setSsn(int ssn) {
		this.ssn = ssn;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	

	public String getApfno() {
		return apfno;
	}

	public void setApfno(String apfno) {
		this.apfno = apfno;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	
	
	
}
	
	
	
	
	




