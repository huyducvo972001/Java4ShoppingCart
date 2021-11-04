package com.poly.asm.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.asm.model.Product;
import com.poly.asm.model.User;

import utils.JpaUtils;

public class ProductDAO extends ConnectDAO{

	private EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
	}
	
	public Product findById(String id) {
		Product entity = em.find(Product.class, id);
		return entity;
	}
	
	public List<Product> findAlls(){
		String jpql = "SELECT o FROM SanPham o";
		TypedQuery<Product> query = em.createQuery(jpql, Product.class);
		List<Product> list = query.getResultList();
		return list;
	}
	
	public Product create(Product entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}	
	}
	public Product updat(Product entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}	
	}
	
	public boolean update(Product product) {
        boolean result = false;
        try {
            PreparedStatement ps = conn.prepareStatement("update SanPham set TenSP = ?, GiaSP= ?, MoTa=?, Hinh = ?, MaDM = ?, MaNhaSX = ?, MaNhaCC = ?  where MaSP = ?");
            ps.setString(1, product.getTenSP());
            ps.setDouble(2, product.getGiaSP());
            ps.setString(3, product.getMoTa());
            ps.setString(4, product.getHinh());
            ps.setString(5, product.getMaDM());
            ps.setString(6, product.getMaNhaSX());
            ps.setString(7, product.getMaNhaCC());
            ps.setString(8, product.getMaSP());
            if(ps.executeUpdate() > 0){
                result = true;
            }         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
	
	public Product delete(String id) {
		Product entity = this.findById(id);
		try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	public List<Product> findAll1(){
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM SanPham");
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                product.setMaDM(rs.getString(6));
                product.setMaNhaSX(rs.getString(7));
                product.setMaNhaCC(rs.getString(8));
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
	
	public List<Product> findAll(){
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM SanPham");
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
	
	public List<Product> findPrice(String price){
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from SanPham where GiaSP between "+ price);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Product> findAllByMadm(String madm){
        List<Product> list = new ArrayList<Product>();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM SanPham WHERE MaDM = ?");
            ps.setString(1, madm);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    public List<Product> findAllByMaNSX(String maNSX){
        List<Product> list = new ArrayList<Product>();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM SanPham WHERE MaNhaSX = ?");
            ps.setString(1, maNSX);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Product> findAllByMaNCC(String maNCC){
        List<Product> list = new ArrayList<Product>();
        try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM SanPham WHERE MaNhaCC = ?");
            ps.setString(1, maNCC);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Product> findSaleProduct(){
        List<Product> list = new ArrayList<Product>();
        try {
            PreparedStatement ps = conn.prepareStatement("select top 4 * from SanPham");
         
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Product> findHotProduct(){
        List<Product> list = new ArrayList<Product>();
        try {
            PreparedStatement ps = conn.prepareStatement("select top 8 * from SanPham");
         
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public List<Product> findPKProduct(){
        List<Product> list = new ArrayList<Product>();
        try {
            PreparedStatement ps = conn.prepareStatement("select top 4 * from SanPham where MaDM = 'DM04'");
         
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
                product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
                
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
    public Product findByMaSP(String maSP){
    	Product product = null;
    	try {
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM SanPham WHERE MaSP = ?");
            ps.setString(1, maSP);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
            	product = new Product();
            	product.setMaSP(rs.getString(1));
                product.setTenSP(rs.getString(2));
                product.setMoTa(rs.getString(4));
                product.setHinh(rs.getString(5));
                product.setGiaSP(rs.getDouble(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return product;
    }
    
    public List<Product> findTK(String TK){
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("select "+TK+", count("+TK+") as 'dem' from SanPham group by "+TK);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                Product product = new Product();
               
                product.setMaDM(rs.getString(TK));
                product.setMaNhaSX(rs.getString("dem"));
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
	
}
