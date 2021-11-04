package com.poly.asm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.asm.dao.CategoryDAO;
import com.poly.asm.dao.ProductDAO;
import com.poly.asm.model.Category;
import com.poly.asm.model.Product;

import utils.Auth;

import javax.servlet.http.HttpServlet;

@WebServlet({"/index", "/login", "/logout"})
public class HomeController extends HttpServlet{
	ProductDAO productDao = new ProductDAO();
	CategoryDAO categoryDao = new CategoryDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getServletPath();

		
		if (url.equals("/index")) {
			doGetIndex(req, resp);
		} else if (url.equals("/login")) {
			
		} else if (url.equals("/logout")) {
			
		}	
	}
	
	protected void doGetIndex(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(Auth.isLogin()==false){
			req.getSession().setAttribute("user", "Khách");
		}
		
		
		List<Product> listProduct = productDao.findAll();
		req.setAttribute("listProduct", listProduct);
		List<Product> listHotProduct = productDao.findHotProduct();
		req.setAttribute("listHotProduct", listHotProduct);
		
		List<Product> listSaleProduct = productDao.findSaleProduct();
		req.setAttribute("listSaleProduct", listSaleProduct);
		
		List<Product> listPKProduct = productDao.findPKProduct();
		req.setAttribute("listPKProduct", listPKProduct);
		
		List<Category> listCategory = categoryDao.findAll();
		req.setAttribute("listCategory", listCategory);
		req.getRequestDispatcher("views/index.jsp").forward(req, resp);
	}

}
