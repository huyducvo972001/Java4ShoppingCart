package com.poly.asm.dao;

import java.sql.PreparedStatement;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.asm.model.Bill;

import utils.JpaUtils;



public class BillDAO extends ConnectDAO{
	private EntityManager em = JpaUtils.getEntityManager();
	public boolean insert(Bill bill) {
		boolean result = false;
		try {
			PreparedStatement ps = conn.prepareStatement("insert into Bill values(?,?,?,?,?)");
			ps.setString(1, bill.getCodeBill());
			ps.setString(2, bill.getNameCustomer());
			ps.setString(3, bill.getDatePay());
			ps.setString(4, bill.getTotal());
			ps.setString(5, bill.getNote());
	
			if (ps.executeUpdate() > 0) {
				result = true;
			}
		} catch (Exception e) {
		
		}
		return result;
	}
	
	public Bill findById(String id) {
		Bill entity = em.find(Bill.class, id);
		return entity;
	}
	public List<Bill> fillAll() {
		String jpql = "select o from Bill o";
		TypedQuery<Bill> query = em.createQuery(jpql, Bill.class);
		List<Bill> list = query.getResultList();
		return list;
	}
}
