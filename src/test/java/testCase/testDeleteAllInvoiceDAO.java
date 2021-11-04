package testCase;

import static org.junit.Assert.*;

import javax.servlet.http.HttpServletRequest;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import com.poly.asm.dao.InvoiceDAO;
import com.poly.asm.model.Invoice;

public class testDeleteAllInvoiceDAO {
	//Test xoa 1 so san pham
	InvoiceDAO dao;
	HttpServletRequest req;
	@Before
	public void init() {
		dao = new InvoiceDAO();				
	}
	
	@After
	public void tearDown() {
		dao.deleteAll();
		dao = null;
	}
	
	@Test
	public void insertProduct() {
		Invoice invoice3 = new Invoice();
		invoice3.setHinh("abc.jpg");
		invoice3.setGia("200000");
		invoice3.setTenSP("Laptop");
		invoice3.setSoLuong(9);
		
		Invoice invoice4 = new Invoice();
		invoice4.setHinh("xyz.jpg");
		invoice4.setGia("300000");
		invoice4.setTenSP("Phu kien");
		invoice4.setSoLuong(5);
		
		dao.insertTemp(invoice3);
		dao.insertTemp(invoice4);
	}
	
	@Test
	public void find() {	
		boolean check = false;		
		for(Invoice iv: dao.fillAll()) {
			if(iv.getTenSP()==null) {
				check = true;	
			}			
		}
		assertTrue(check);
		
	}
	
	@Test
	public void sumMoney() {	
		double sum= 0;		
		for(Invoice iv: dao.fillAll()) {
			sum += Double.parseDouble(iv.getGia());		
		}
		System.out.println(sum);
		assertTrue(sum==0);		
	}
}
