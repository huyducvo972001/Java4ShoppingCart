package com.poly.asm.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.asm.model.User;

import utils.JpaUtils;

import com.poly.asm.dao.ConnectDAO;

public class UserDAO extends ConnectDAO {

	private EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
	}

	public User findByID(int id) {
		User entity = em.find(User.class, id);
		return entity;
	}

	public User findByUserName(String username) {
		String jpql = "SELECT o FROM User o WHERE o.userName LIKE :username";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter("username", username);
		return query.getSingleResult();
	}

	public User Create(User entity) {
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

	public User Update(User entity) {
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

	public User Delete(int id) {
		User entity = this.findByID(id);
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

	public User checkLogin(String username, String password) {
		User user = null;

		try {
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM user WHERE username = ? AND password = ?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user = new User();
				user.setUserName(rs.getString("USERNAME"));
				user.setFullName(rs.getString("FULLNAME"));
				user.setEmail(rs.getString("EMAIL"));
				user.setPhone(rs.getString("PHONE"));
				user.setRole(rs.getBoolean("ROLE"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public List<User> fillAll() {
		String jpql = "select o from User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		List<User> list = query.getResultList();
		return list;
	}

}
