package com.poly.asm.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.poly.asm.model.Category;

public class CategoryDAO extends ConnectDAO {
	public List<Category> findAll(){
        List<Category> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM DanhMuc");
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Category category = new Category();
                category.setMaDM(rs.getString(1));
                category.setTenDM(rs.getString(2));
                category.setGhiChu(rs.getString(3));
                
                list.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    } 
	public List<Category> findAllNhaCC(){
        List<Category> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM NhaCC");
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Category category = new Category();
                category.setMaDM(rs.getString(1));
                category.setTenDM(rs.getString(2));
                category.setGhiChu(rs.getString(3));
                
                list.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    } 
	public List<Category> findAllNSX(){
        List<Category> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM NhaSX");
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Category category = new Category();
                category.setMaDM(rs.getString(1));
                category.setTenDM(rs.getString(2));
                category.setGhiChu(rs.getString(3));
                
                list.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    } 
    
    public Category findByMaDM(String maDM){
    	Category category = null;
    	try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM danhmuc WHERE maDM = ?");
            ps.setString(1, maDM);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
            	category = new Category();
                category.setMaDM(rs.getString(1));
                category.setTenDM(rs.getString(2));
                category.setGhiChu(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return category;
    }
    public Category findByMaNSX(String maNSX){
    	Category category = null;
    	try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM NhaSX WHERE MaNhaSX = ?");
            ps.setString(1, maNSX);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
            	category = new Category();
                category.setMaDM(rs.getString(1));
                category.setTenDM(rs.getString(2));
                category.setGhiChu(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return category;
    }
    public Category findByMaNCC(String maNCC){
    	Category category = null;
    	try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM NhaCC WHERE MaNhaCC = ?");
            ps.setString(1, maNCC);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
            	category = new Category();
                category.setMaDM(rs.getString(1));
                category.setTenDM(rs.getString(2));
                category.setGhiChu(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return category;
    }
    
}
