package com.poly.asm.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "DanhMuc")
public class Category {
	@Id
	@Column(name = "MaDM")
	private String maDM;
	@Column(name = "TenDM")
	private String tenDM;
	@Column(name = "GhiChu")
	private String ghiChu;	

	
	public Category() {
		
	}

	public Category(String maDM, String tenDM, String ghiChu) {
		this.maDM = maDM;
		this.tenDM = tenDM;
		this.ghiChu = ghiChu;

	}

	public String getMaDM() {
		return maDM;
	}

	public void setMaDM(String maDM) {
		this.maDM = maDM;
	}

	public String getTenDM() {
		return tenDM;
	}

	public void setTenDM(String tenDM) {
		this.tenDM = tenDM;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}


	
	
}
