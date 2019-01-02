package com.deepa.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="loaninfo")
public class LoanInfo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	//@Column(name="loanId")
	private int loanid;
	
	@Column(name="bankname")
	private String bankname;
	
	@Column(name="loantype")
	private String loantype;
	
	@Column(name="interest")
	private int interest;

	public int getLoanid() {
		return loanid;
	}

	public void setLoanid(int loanid) {
		this.loanid = loanid;
	}

	

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	

	public String getLoantype() {
		return loantype;
	}

	public void setLoantype(String loantype) {
		this.loantype = loantype;
	}

	public int getInterest() {
		return interest;
	}

	public void setInterest(int interest) {
		this.interest = interest;
	}

	

	
	
}
	
	


