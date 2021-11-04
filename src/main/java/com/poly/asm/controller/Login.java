package com.poly.asm.controller;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.asm.dao.UserDAO;
import com.poly.asm.model.User;

import utils.Auth;
import utils.JpaUtils;

@WebServlet({ "/login/manager", "/forgotpassword" })
public class Login extends HttpServlet {
	private EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/views/form.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		if (uri.contains("forgotpassword")) {
			try {
				Properties props = new Properties();
				props.setProperty("mail.smtp.auth", "true");
				props.setProperty("mail.smtp.starttls.enable", "true");
				props.setProperty("mail.smtp.host", "smtp.gmail.com");
				props.setProperty("mail.smtp.port", "587");

				Session session = Session.getInstance(props, new Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						String username = "huyvd.ga@gmail.com";
						String password = "huy972001";
						return new PasswordAuthentication(username, password);
					}

				});
				if(req.getParameter("username").isEmpty()) {
					req.setAttribute("message", "Nhập tên đăng nhập muốn lấy lại mật khẩu!");
					req.getRequestDispatcher("/views/form.jsp").forward(req, resp);
					System.out.println("dô");
					return;
				}
				String id = req.getParameter("username");

				UserDAO dao = new UserDAO();
				User user = dao.findByUserName(id);
				String fromEmail = "huyvdps14504@fpt.edu.vn";
				String toEmail = user.getEmail();
				String titleEmail = "Thông báo lấy lại mật khẩu";
				String contentEmail = "<p>Chào bạn</p>"+user.getFullName()+"<p> Chúng tôi nhận được yêu cầu lấy lại mật khẩu cho tài khoản của bạn</p>" +"Mật khẩu của bạn là: "+user.getPassWord() + "<p>Trân trọng</p>"
						+ "Đội ngũ TECHSTORE";

				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(fromEmail));
				message.setRecipients(Message.RecipientType.TO, toEmail);
				message.setSubject(titleEmail, "utf-8");
				message.setText(contentEmail, "utf-8", "html");
				message.setReplyTo(message.getFrom());
				Transport.send(message);
				System.out.println("send Thành công!");
			} catch (MessagingException e) {
				req.setAttribute("message", "Nhập tên đăng nhập muốn lấy lại mật khẩu!");

			}
			req.getRequestDispatcher("/views/form.jsp").forward(req, resp);
		} else {
			try {
				String id = req.getParameter("username");
				String pw = req.getParameter("password");
				UserDAO dao = new UserDAO();
				User user = dao.findByUserName(id);

				if (!user.getPassWord().equals(pw)) {
					req.setAttribute("message", "Sai mật khẩu!");
					req.getRequestDispatcher("/views/form.jsp").forward(req, resp);
				} else {
					Auth.user = user;
					if (user.getRole() == true) {
						req.setAttribute("message", "Đăng nhập thành công!");
						req.getSession().setAttribute("user", user.getFullName());
						resp.sendRedirect("/SOF301_JAVA4_VoDucHuy/user/index");
					} else {
						req.getSession().setAttribute("user", user.getFullName());
						resp.sendRedirect("/SOF301_JAVA4_VoDucHuy/index");
					}

				}

			} catch (Exception e) {
				req.setAttribute("message", "Sai tên đăng nhập!");
				req.getRequestDispatcher("/views/form.jsp").forward(req, resp);
			}
		}
	}

}
