package com.poly.asm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "SanPham")
public class Product {
	@Id
	@Column(name = "MaSP")
	private String maSP;
	@Column(name = "TenSP")
	private String tenSP;
	@Column(name = "GiaSP")
	private double giaSP;
	@Column(name = "MoTa")
	private String moTa;
	@Column(name = "Hinh")
	private String hinh;
	@Column(name = "MaDM")
	private String maDM;
	@Column(name = "MaNhaSX")
	private String maNhaSX;
	@Column(name = "MaNhaCC")
	private String maNhaCC;
	

	
	public Product() {
		
	}

	public Product(String maSP, String tenSP, double giaSP, String moTa, String hinh, String maDM, String maNhaSX,
			String maNhaCC, Category category) {
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.giaSP = giaSP;
		this.moTa = moTa;
		this.hinh = hinh;
		this.maDM = maDM;
		this.maNhaSX = maNhaSX;
		this.maNhaCC = maNhaCC;

	}

	public String getMaSP() {
		return maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public double getGiaSP() {
		return giaSP;
	}

	public void setGiaSP(double giaSP) {
		this.giaSP = giaSP;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getHinh() {
		return hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}

	public String getMaDM() {
		return maDM;
	}

	public void setMaDM(String maDM) {
		this.maDM = maDM;
	}

	public String getMaNhaSX() {
		return maNhaSX;
	}

	public void setMaNhaSX(String maNhaSX) {
		this.maNhaSX = maNhaSX;
	}

	public String getMaNhaCC() {
		return maNhaCC;
	}

	public void setMaNhaCC(String maNhaCC) {
		this.maNhaCC = maNhaCC;
	}

		
}
