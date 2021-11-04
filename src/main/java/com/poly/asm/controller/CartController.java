package com.poly.asm.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.asm.dao.BillDAO;
import com.poly.asm.dao.InvoiceDAO;
import com.poly.asm.model.Bill;
import com.poly.asm.model.Invoice;

@WebServlet({"/cart", "/cart/insert","/cart/list","/cart/delete/*","/cart/pay"})
public class CartController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		resp.setContentType("text/html;charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		InvoiceDAO dao = new InvoiceDAO();
        Invoice iv = new Invoice();
		String uri = req.getRequestURI();
		if(uri.contains("/cart/insert")) { 
	        String nameProd = req.getParameter("cartName"); 
	        String nameImg = req.getParameter("imgName");
	        String priceProd = req.getParameter("cartPrice");
	        iv.setHinh(nameImg);
	        iv.setTenSP(nameProd);
	        iv.setGia(priceProd);
	        iv.setSoLuong(1);

	        boolean check = true;
	        for(Invoice ivoice: dao.fillByName(nameProd)) {
	        	if(ivoice.getTenSP().equalsIgnoreCase(iv.getTenSP())) {
	        		Invoice ivv = new Invoice();
	        		ivv.setSoLuong(ivoice.getSoLuong()+1);
	        		ivv.setTenSP(nameProd);
	        		dao.update(ivv);
	        		check = false;
	        	}
	        	
	        }
	        if(check==true) {
        	 dao.insertTemp(iv);		       
	        }
	        req.getRequestDispatcher("/redirect.jsp").forward(req, resp);
		}else if(uri.contains("/cart/list")) {
			List<Invoice> list = dao.fillAll();
			req.setAttribute("listCart", list);
			req.getRequestDispatcher("/views/pay.jsp").forward(req, resp);
		}else if (uri.contains("/cart/delete")) {
			int id = Integer.valueOf(uri.substring(uri.lastIndexOf("/") + 1));			
			System.out.println(id);
			dao.delete(id);
			resp.sendRedirect("${pageContext.request.contextPath}/cart/list");
		}else if(uri.contains("/cart/pay")) {
			int code = (int) Math.floor(((Math.random() * 899999) + 100000));
	
			BillDAO daoBill = new BillDAO();
			Bill bill = new Bill();
	
		    bill.setCodeBill(String.valueOf(code));
			bill.setNameCustomer(req.getParameter("nameCustom"));
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	        String date = formatter.format(new Date());
	   
			bill.setDatePay(date);	
			bill.setTotal(req.getParameter("totalCart"));
			bill.setNote("");
			
			daoBill.insert(bill);
			for(Invoice ivv: dao.fillAll()) {
				
				iv.setHinh(ivv.getHinh());
		        iv.setTenSP(ivv.getTenSP());
		        iv.setGia(ivv.getGia());
		     
		        iv.setSoLuong(ivv.getSoLuong());
		        iv.setMaHoaDon(String.valueOf(code));
		        dao.insert(iv);
		      
			}
			
			
			
	        dao.deleteAll();
	        req.getRequestDispatcher("/redirect.jsp").forward(req, resp);
		}
        
	     
	}
	
	
}
