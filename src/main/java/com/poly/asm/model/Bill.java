package com.poly.asm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Bill")
public class Bill {
	@Id
	@Column(name = "MaBill")
	String codeBill;
	@Column(name = "TenKhach")
	String nameCustomer;
	@Column(name = "NgayMua")
	String datePay;
	@Column(name = "TongTien")
	String total;
	@Column(name = "GhiChu")
	String note;
	
	public Bill() {
	}

	public Bill(String codeBill, String nameCustomer, String datePay, String total, String note) {
		this.codeBill = codeBill;
		this.nameCustomer = nameCustomer;
		this.datePay = datePay;
		this.total = total;
		this.note = note;
	}

	public String getCodeBill() {
		return codeBill;
	}

	public void setCodeBill(String codeBill) {
		this.codeBill = codeBill;
	}

	public String getNameCustomer() {
		return nameCustomer;
	}

	public void setNameCustomer(String nameCustomer) {
		this.nameCustomer = nameCustomer;
	}

	public String getDatePay() {
		return datePay;
	}

	public void setDatePay(String datePay) {
		this.datePay = datePay;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
	
}
