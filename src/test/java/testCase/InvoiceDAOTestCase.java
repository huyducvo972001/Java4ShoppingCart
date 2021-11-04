package testCase;

import static org.junit.Assert.*;

import javax.servlet.http.HttpServletRequest;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import com.poly.asm.dao.InvoiceDAO;
import com.poly.asm.model.Invoice;

public class InvoiceDAOTestCase {
	//Test xoa 1 so san pham
	InvoiceDAO dao;
	HttpServletRequest req;
	@Before
	public void init() {
		dao = new InvoiceDAO();				
	}
	
	@After
	public void tearDown() {
		dao.deleteByName("SmartPhone");
		dao.deleteByName("Tablet");
		dao = null;
	}
	
	@Test
	public void insertProduct() {
		Invoice invoice = new Invoice();
		invoice.setHinh("abc.jpg");
		invoice.setGia("200000");
		invoice.setTenSP("SmartPhone");
		invoice.setSoLuong(9);
		
		Invoice invoice2 = new Invoice();
		invoice2.setHinh("xyz.jpg");
		invoice2.setGia("300000");
		invoice2.setTenSP("Tablet");
		invoice2.setSoLuong(5);
		
		dao.insertTemp(invoice);
		dao.insertTemp(invoice2);
	}
		
	@Test
	public void find() {	
		boolean check = false;
		boolean check2 = false;
		for(Invoice iv: dao.fillAll()) {
			if(iv.getTenSP().equals("SmartPhone")) {
				check = true;
			}
			if(iv.getTenSP().equals("Tablet")) {
				check2 = true;
			}
		}
		assertTrue(check);
		assertTrue(check2);	
	}
	

	
}
