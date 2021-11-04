package com.poly.asm.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import com.poly.asm.model.Invoice;
import utils.JpaUtils;

public class InvoiceDAO extends ConnectDAO {
	private EntityManager em = JpaUtils.getEntityManager();
	public boolean insert(Invoice invoice) {
		boolean result = false;
		try {
			PreparedStatement ps = conn.prepareStatement("insert into HoaDon values(?,?,?,?,?)");
			ps.setString(1, invoice.getHinh());
			ps.setString(2, invoice.getTenSP());
			ps.setString(3, invoice.getGia());
			ps.setInt(4, invoice.getSoLuong());
			ps.setString(5, invoice.getMaHoaDon());
			
			if (ps.executeUpdate() > 0) {
				result = true;
			}
		} catch (Exception e) {
//		e.printStackTrace();
		}
		return result;
	}
	public List<Invoice> fillByID(String id) {
        List<Invoice> list = new ArrayList<Invoice>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from HoaDon where MaBill = N'"+id+"'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	Invoice iv = new Invoice();
            	iv.setHoaDon(rs.getInt("MaHD"));
            	iv.setHinh(rs.getString("Hinh"));
            	iv.setTenSP(rs.getString("TenSP"));
            	iv.setGia(rs.getString("GiaSP"));
            	iv.setSoLuong(rs.getInt("SoLuong"));
            	iv.setMaHoaDon(rs.getString("MaBill"));
                list.add(iv);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	public List<Invoice> findTK(){
        List<Invoice> list = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement("select top 5 TenSP, count(TenSP) as dem from HoaDon group by TenSP ORDER BY dem desc");
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
            	Invoice iv = new Invoice();
               
                iv.setTenSP(rs.getString("TenSP"));
                iv.setSoLuong(rs.getInt("dem"));
                list.add(iv);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
	public List<Invoice> fillAll() {
        List<Invoice> list = new ArrayList<Invoice>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from HoaDonTam");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	Invoice iv = new Invoice();
            	iv.setHoaDon(rs.getInt("MaHD"));
            	iv.setHinh(rs.getString("Hinh"));
            	iv.setTenSP(rs.getString("TenSP"));
            	iv.setGia(rs.getString("GiaSP"));
            	iv.setSoLuong(rs.getInt("SoLuong"));
                list.add(iv);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	
	public boolean update(Invoice iv) {
        boolean result = false;
        try {
            PreparedStatement ps = conn.prepareStatement("update HoaDonTam set SoLuong = ? where TenSP = ?");
            ps.setInt(1, iv.getSoLuong());
            
            ps.setString(2, iv.getTenSP());

            if(ps.executeUpdate() > 0){
                result = true;
            }         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
	
	public List<Invoice> fillByName(String name) {
        List<Invoice> list = new ArrayList<Invoice>();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from HoaDonTam where TenSP = N'"+name+"'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	Invoice iv = new Invoice();
            	iv.setHoaDon(rs.getInt("MaHD"));
            	iv.setHinh(rs.getString("Hinh"));
            	iv.setTenSP(rs.getString("TenSP"));
            	iv.setGia(rs.getString("GiaSP"));
            	iv.setSoLuong(rs.getInt("SoLuong"));
                list.add(iv);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	
	public boolean insertTemp(Invoice invoice) {
		boolean result = false;
		try {
			PreparedStatement ps = conn.prepareStatement("insert into HoaDonTam values(?,?,?,?)");
			ps.setString(1, invoice.getHinh());
			ps.setString(2, invoice.getTenSP());
			ps.setString(3, invoice.getGia());
			ps.setInt(4, invoice.getSoLuong());
			if (ps.executeUpdate() > 0) {
				result = true;
			}
		} catch (Exception e) {
		
		}
		return result;
	}
	public boolean delete(int id) {
        boolean result = false;
        try {
            PreparedStatement ps = conn.prepareStatement("delete HoaDonTam where MaHD=?");
            ps.setInt(1, id);
             if(ps.executeUpdate() > 0){
                result = true;
            }         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
	public boolean deleteByName(String name) {
        boolean result = false;
        try {
            PreparedStatement ps = conn.prepareStatement("delete HoaDonTam where TenSP=?");
            ps.setString(1, name);
             if(ps.executeUpdate() > 0){
                result = true;
            }         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
	public boolean deleteAll() {
        boolean result = false;
        try {
            PreparedStatement ps = conn.prepareStatement("delete HoaDonTam");
            
             if(ps.executeUpdate() > 0){
                result = true;
            }         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
