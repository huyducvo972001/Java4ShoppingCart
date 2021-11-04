package testCase;

import static org.junit.Assert.*;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.poly.asm.dao.UserDAO;
import com.poly.asm.model.User;


public class EditUserTestCase {
	UserDAO dao ;
	@Before
	public void init() {
		dao = new UserDAO();				
	}
	
	@After
	public void tearDown() {
		dao = null;
	}
	
	@Test
	public void insertProduct() {
		User user = new User();
		user.setUserName("US05");
		user.setPassWord("123");
		user.setFullName("Ta Kieu Thanh Huy");
		user.setEmail("huytktps12345@fpt.edu.vn");
		user.setPhone("0123456789");
		user.setRole(true);		
		dao.Create(user);
	}
		
	@Test
	public void edit() {	
		User user = new User();
		user.setUserName("");
		user.setPassWord("123");
		user.setFullName("Ta Kieu Thanh Huy");
		user.setEmail("huytktps12345@fpt.edu.vn");
		user.setPhone("0123456789");
		user.setRole(true);		
		dao.Update(user);	
	}
	
	@Test
	public void editUser() {	
		User user = new User();
		user.setUserName("US06");
		user.setPassWord("123");
		user.setFullName("Ta Kieu Thanh Huy");
		user.setEmail("huytktps12345@fpt.edu.vn");
		user.setPhone("0123456789");
		user.setRole(true);		
		dao.Update(user);	
	}
	
	@Test
	public void editPassword() {	
		User user = new User();
		user.setUserName("US05");
		user.setPassWord("123!@@$%^");
		user.setFullName("Ta Kieu Thanh Huy");
		user.setEmail("huytktps12345@fpt.edu.vn");
		user.setPhone("0123456789");
		user.setRole(true);		
		dao.Update(user);	
	}

}
