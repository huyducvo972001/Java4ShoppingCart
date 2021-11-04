package com.poly.asm.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.asm.dao.BillDAO;
import com.poly.asm.dao.InvoiceDAO;
import com.poly.asm.dao.ProductDAO;
import com.poly.asm.dao.UserDAO;
import com.poly.asm.model.Bill;
import com.poly.asm.model.Invoice;
import com.poly.asm.model.Product;
import com.poly.asm.model.User;
@WebServlet({"/user/index","/user/edit/2/*","/user/create","/user/update","/user/delete",
	"/product/edit/3/*", "/product/3/create", "/product/3/update", "/product/3/delete", "/bill/5/view/*"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 30, maxRequestSize = 1024 * 1024 * 50)
public class UserController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		UserDAO dao= new UserDAO();
		User user = new User();
		ProductDAO daoProd = new ProductDAO();
		Product product = new Product();
		Invoice invoice = new Invoice();
		InvoiceDAO  daoIv = new InvoiceDAO();
		Bill bill = new Bill();
		BillDAO daoBill = new BillDAO();
		String uri = req.getRequestURI();
		req.setAttribute("dong", "setTimeout(() => { dong()	}, 30);");
		if(uri.contains("/user/edit")) {
			int id = Integer.valueOf(uri.substring(uri.lastIndexOf("/")+1));
			String tabNum = uri.split("/")[4];
			req.setAttribute("tabNum", tabNum);
			user = dao.findByID(id);
		}else if(uri.contains("/user/create")) {
			try {
				BeanUtils.populate(user, req.getParameterMap());
				dao.Create(user);
				req.setAttribute("message", "swal({title: \"Success!\", text: \"Finish create user!\", icon: \"success\",  button: \"OK\"});");
				
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "swal({title: \"Error\", text: \"Failure create user! Check the information again!\", icon: \"error\", button: \"OK\"});");
			}
		}else if(uri.contains("/user/update")) {
			try {
				BeanUtils.populate(user, req.getParameterMap());
				dao.Update(user);
				req.setAttribute("message", "swal({title: \"Success!\", text: \"Finish update user!\", icon: \"success\",  button: \"OK\"});");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "swal({title: \"Error\", text: \"Failure update user! Check the information again!\", icon: \"error\", button: \"OK\"});");
			}
		}else if(uri.contains("/user/delete")) {
			try {
				int id = Integer.valueOf(req.getParameter("id"));				
				dao.Delete(id);
				req.setAttribute("message", "swal({title: \"Success!\", text: \"Finish delete user!\", icon: \"success\",  button: \"OK\"});");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "swal({title: \"Error\", text: \"Failure delete user! Check the information again!\", icon: \"error\", button: \"OK\"});");
				
			}
		}else if (uri.contains("/product/edit/3")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			String tabNum = uri.split("/")[4];
			req.setAttribute("tabNum", tabNum);
			product = daoProd.findById(id);
		} else if (uri.contains("/product/3/create")) {
			try {		
				BeanUtils.populate(product, req.getParameterMap());	
				File dir = new File(req.getServletContext().getRealPath("/images"));
				if(!dir.exists()) { // tạo nếu chưa tồn tại
				dir.mkdirs();
				}
				// lưu các file upload vào thư mục files
				Part photo = req.getPart("hinhs"); // file hình
			
				File photoFile = new File(dir, photo.getSubmittedFileName());
				photo.write(photoFile.getAbsolutePath());
			
				String tabNum = uri.split("/")[3];
				req.setAttribute("tabNum", tabNum);
				
				daoProd.create(product);
				
				req.setAttribute("message", "swal({title: \"Success!\", text: \"Finish create product!\", icon: \"success\",  button: \"OK\"});");
			} catch (Exception e) {
				// TODO: handle exception
				String tabNum = uri.split("/")[3];
				req.setAttribute("tabNum", tabNum);
				req.setAttribute("message", "  swal({title: \"Error\", text: \"Failure create product! Check the information again!\", icon: \"error\", button: \"OK\"});");
				
			}
		} else if (uri.contains("/product/3/update")) {
			try {
				
				String tabNum = uri.split("/")[3];
				req.setAttribute("tabNum", tabNum);
				BeanUtils.populate(product, req.getParameterMap());
				File dir = new File(req.getServletContext().getRealPath("/images"));
				if(!dir.exists()) { // tạo nếu chưa tồn tại
				dir.mkdirs();
				}
				// lưu các file upload vào thư mục files
				Part photo = req.getPart("hinhs"); // file hình
			
				File photoFile = new File(dir, photo.getSubmittedFileName());
				photo.write(photoFile.getAbsolutePath());
				daoProd.updat(product);
				req.setAttribute("message", "swal({title: \"Success!\", text: \"Finish update product!\", icon: \"success\",  button: \"OK\"});");
			} catch (Exception e) {
				// TODO: handle exception
				String tabNum = uri.split("/")[3];
				req.setAttribute("tabNum", tabNum);
				req.setAttribute("message", "  swal({title: \"Error\", text: \"Failure update product! Check the information again!\", icon: \"error\", button: \"OK\"});");
				
			}
		} else if (uri.contains("/product/3/delete")) {
			try {			
				String tabNum = uri.split("/")[3];
				System.out.println(tabNum+"----------------");
				req.setAttribute("tabNum", tabNum);
				String id = req.getParameter("maSP");
				daoProd.delete(id);
				req.setAttribute("message", "swal({title: \"Success!\", text: \"Finish delete product!\", icon: \"success\",  button: \"OK\"});");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "  swal({title: \"Error\", text: \"Failure delete product! Check the information again!\", icon: \"error\", button: \"OK\"});");
				
			}
		}else if (uri.contains("/bill/5/view")) {
			try {			
			
				String tabNum = "6";
				req.setAttribute("tabNum", tabNum);
				String id = uri.substring(uri.lastIndexOf("/") + 1);
			
				List<Invoice> list = daoIv.fillByID(id);
				req.setAttribute("insTable", list);
				req.setAttribute("dong", "setTimeout(() => { mo()	}, 30);");
				
			} catch (Exception e) {
				// TODO: handle exception
				
			}
		}
		
		req.setAttribute("formBill", daoBill.fillAll());
		req.setAttribute("formProd", product);
		req.setAttribute("itemsProd", daoProd.findAll1());
		req.setAttribute("form", user);
		
		req.setAttribute("items", dao.fillAll());
		String soLieu = "";
		String ten = "";
		for(Product pr: daoProd.findTK("MaDM")) {
			if(soLieu.equalsIgnoreCase("")){
				soLieu += pr.getMaNhaSX();
				ten += "\""+pr.getMaDM()+"\"";
			}else {
				soLieu += ", " +pr.getMaNhaSX();
				ten += ", "+"\""+pr.getMaDM()+"\"";
			}
			
		}
		String soLieuSX ="";
		String tenSX = "";
		for(Product pr: daoProd.findTK("MaNhaSX")) {
			if(soLieuSX.equalsIgnoreCase("")){
				soLieuSX += pr.getMaNhaSX();
				tenSX += "\""+pr.getMaDM()+"\"";
			}else {
				soLieuSX += ", " +pr.getMaNhaSX();
				tenSX += ", "+"\""+pr.getMaDM()+"\"";
			}
			
		}
		String soLieuCC ="";
		String tenCC = "";
		for(Product pr: daoProd.findTK("MaNhaSX")) {
			if(soLieuCC.equalsIgnoreCase("")){
				soLieuCC += pr.getMaNhaSX();
				tenCC += "\""+pr.getMaDM()+"\"";
			}else {
				soLieuCC += ", " +pr.getMaNhaSX();
				tenCC += ", "+"\""+pr.getMaDM()+"\"";
			}
			
		}
		InvoiceDAO ivDAO = new InvoiceDAO();
		String soLieuIV ="";
		String tenIV = "";
		for(Invoice iv: ivDAO.findTK()) {
			if(soLieuIV.equalsIgnoreCase("")){
				soLieuIV += iv.getSoLuong();
				tenIV += "\""+iv.getTenSP()+"\"";
			}else {
				soLieuIV += ", " +iv.getSoLuong();
				tenIV += ", "+"\""+iv.getTenSP()+"\"";
			}
			
		}
		req.setAttribute("ten", ten);
		req.setAttribute("soLieu", soLieu);
		req.setAttribute("tenSX", tenSX);
		req.setAttribute("soLieuSX", soLieuSX);
		req.setAttribute("tenCC", tenCC);
		req.setAttribute("soLieuCC", soLieuCC);
		req.setAttribute("tenIV", tenIV);
		req.setAttribute("soLieuIV", soLieuIV);
		req.getRequestDispatcher("/manager/handling.jsp").forward(req, resp);
	}
}
