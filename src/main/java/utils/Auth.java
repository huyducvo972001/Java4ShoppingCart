package utils;

import com.poly.asm.model.User;

public class Auth {
	public static User user = null;

	public static void clear() {
		Auth.user = null;
	}

	public static boolean isLogin() {
		return Auth.user != null;
	}

	public static boolean isManager() {
		return Auth.isLogin() && (user.getRole());
	}
}
