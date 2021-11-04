package com.poly.asm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "HoaDon")
public class Invoice {
	@Id
	@Column(name = "MaHD")
	int hoaDon;
	@Column(name = "Hinh")
	String tenSP;
	@Column(name = "TenSP")
	String gia;
	@Column(name = "GiaSP")
	int soLuong;
	@Column(name = "SoLuong")
	String hinh;
	@Column(name = "MaBill")
	String maHoaDon;
	public Invoice() {
	}
	public Invoice(int hoaDon, String tenSP, String gia, int soLuong, String hinh, String maHoaDon) {
		this.hoaDon = hoaDon;
		this.tenSP = tenSP;
		this.gia = gia;
		this.soLuong = soLuong;
		this.hinh = hinh;
		this.maHoaDon = maHoaDon;
	}
	public int getHoaDon() {
		return hoaDon;
	}
	public void setHoaDon(int hoaDon) {
		this.hoaDon = hoaDon;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public String getGia() {
		return gia;
	}
	public void setGia(String gia) {
		this.gia = gia;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
	public String getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	

}
