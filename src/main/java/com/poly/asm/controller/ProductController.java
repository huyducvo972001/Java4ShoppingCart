package com.poly.asm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.microsoft.sqlserver.jdbc.StringUtils;
import com.poly.asm.dao.CategoryDAO;
import com.poly.asm.dao.ProductDAO;
import com.poly.asm.model.Category;
import com.poly.asm.model.Product;

@WebServlet({"/sanpham","/priceProduct/*"})
public class ProductController extends HttpServlet {
	
	ProductDAO productDAO = new ProductDAO();
	CategoryDAO categoryDAO = new CategoryDAO();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String maDM = req.getParameter("maDM"); // localhost:8080/asm-java4/sanpham?maDM=dm01
		String maSP = req.getParameter("maSP"); // localhost:8080/asm-java4/sanpham?maSP=1
		String uri = req.getRequestURI();
		String a = uri.substring(uri.lastIndexOf("/") + 1);
		if (maSP != null && maSP.length() > 0) {
			doGetChiTietSanPham(req, resp, maSP);
		} else if (maDM != null && maDM.length() > 0) {			
			doGetDanhMuc(req, resp, maDM);
		}else if(a.equalsIgnoreCase("1")) {
			List<Product> listProductPrice = productDAO.findPrice("0 and 2000000");
			req.setAttribute("listProductPrice", listProductPrice); 
			
			List<Category> listCategory = categoryDAO.findAll();
			req.setAttribute("listCategory", listCategory);
			List<Category> listNhaCC = categoryDAO.findAllNhaCC();
			req.setAttribute("listNhaCC", listNhaCC);
			List<Category> listNhaSX = categoryDAO.findAllNSX();
			req.setAttribute("listNhaSX", listNhaSX);
			req.getRequestDispatcher("/views/Category.jsp").forward(req, resp);
		}else if(a.equalsIgnoreCase("2")) {
			List<Product> listProductPrice = productDAO.findPrice("2000000 and 4000000");
			req.setAttribute("listProductPrice", listProductPrice); 
			
			List<Category> listCategory = categoryDAO.findAll();
			req.setAttribute("listCategory", listCategory);
			List<Category> listNhaCC = categoryDAO.findAllNhaCC();
			req.setAttribute("listNhaCC", listNhaCC);
			List<Category> listNhaSX = categoryDAO.findAllNSX();
			req.setAttribute("listNhaSX", listNhaSX);
			req.getRequestDispatcher("/views/Category.jsp").forward(req, resp);
		}else if(a.equalsIgnoreCase("3")) {
			List<Product> listProductPrice = productDAO.findPrice("4000000 and 7000000");
			req.setAttribute("listProductPrice", listProductPrice); 
			
			List<Category> listCategory = categoryDAO.findAll();
			req.setAttribute("listCategory", listCategory);
			List<Category> listNhaCC = categoryDAO.findAllNhaCC();
			req.setAttribute("listNhaCC", listNhaCC);
			List<Category> listNhaSX = categoryDAO.findAllNSX();
			req.setAttribute("listNhaSX", listNhaSX);
			req.getRequestDispatcher("/views/Category.jsp").forward(req, resp);
		}else if(a.equalsIgnoreCase("4")) {
			List<Product> listProductPrice = productDAO.findPrice("7000000 and 13000000");
			req.setAttribute("listProductPrice", listProductPrice); 
			
			List<Category> listCategory = categoryDAO.findAll();
			req.setAttribute("listCategory", listCategory);
			List<Category> listNhaCC = categoryDAO.findAllNhaCC();
			req.setAttribute("listNhaCC", listNhaCC);
			List<Category> listNhaSX = categoryDAO.findAllNSX();
			req.setAttribute("listNhaSX", listNhaSX);
			req.getRequestDispatcher("/views/Category.jsp").forward(req, resp);
		}else if(a.equalsIgnoreCase("5")) {
			List<Product> listProductPrice = productDAO.findPrice("13000000 and 20000000");
			req.setAttribute("listProductPrice", listProductPrice); 
			
			List<Category> listCategory = categoryDAO.findAll();
			req.setAttribute("listCategory", listCategory);
			List<Category> listNhaCC = categoryDAO.findAllNhaCC();
			req.setAttribute("listNhaCC", listNhaCC);
			List<Category> listNhaSX = categoryDAO.findAllNSX();
			req.setAttribute("listNhaSX", listNhaSX);
			req.getRequestDispatcher("/views/Category.jsp").forward(req, resp);
		}else if(a.equalsIgnoreCase("6")) {
			List<Product> listProductPrice = productDAO.findPrice("20000000 and 100000000");
			req.setAttribute("listProductPrice", listProductPrice); 
			
			List<Category> listCategory = categoryDAO.findAll();
			req.setAttribute("listCategory", listCategory);
			List<Category> listNhaCC = categoryDAO.findAllNhaCC();
			req.setAttribute("listNhaCC", listNhaCC);
			List<Category> listNhaSX = categoryDAO.findAllNSX();
			req.setAttribute("listNhaSX", listNhaSX);
			req.getRequestDispatcher("/views/Category.jsp").forward(req, resp);
		}
	}
	
	protected void doGetChiTietSanPham(HttpServletRequest req, HttpServletResponse resp, String maSP) throws ServletException, IOException {
		Product product = productDAO.findByMaSP(maSP);
		req.setAttribute("spChiTiet", product);
		
		// hien thi menu cac danh muc (trang nao cung co)
		List<Category> listCategory = categoryDAO.findAll();
		req.setAttribute("listCategory", listCategory);
		
		req.getRequestDispatcher("views/ProductDetail.jsp").forward(req, resp);
	}
	
	protected void doGetDanhMuc(HttpServletRequest req, HttpServletResponse resp, String maDM) throws ServletException, IOException {
		// lay het sp trong danh muc duoc chon
		List<Product> listProduct = productDAO.findAllByMadm(maDM);
		req.setAttribute("listProductdm", listProduct);
		
		List<Product> listProductNSX = productDAO.findAllByMaNSX(maDM);
		req.setAttribute("listProductNSX", listProductNSX);
		
		List<Product> listProductNCC = productDAO.findAllByMaNCC(maDM);
		req.setAttribute("listProductNCC", listProductNCC);
		
		// lay ten danh muc duoc chon
		Category category = categoryDAO.findByMaDM(maDM);
		req.setAttribute("category", category);
		
		Category NhaSX = categoryDAO.findByMaNSX(maDM);
		req.setAttribute("NhaSX", NhaSX);
		
		Category NhaCC = categoryDAO.findByMaNCC(maDM);
		req.setAttribute("NhaCC", NhaCC);

		// hien thi menu cac danh muc (trang nao cung co)
		List<Category> listCategory = categoryDAO.findAll();
		req.setAttribute("listCategory", listCategory);
		List<Category> listNhaCC = categoryDAO.findAllNhaCC();
		req.setAttribute("listNhaCC", listNhaCC);
		List<Category> listNhaSX = categoryDAO.findAllNSX();
		req.setAttribute("listNhaSX", listNhaSX);
		req.getRequestDispatcher("views/Category.jsp").forward(req, resp);
	}
}
