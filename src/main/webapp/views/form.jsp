<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
	<form action="${pageContext.request.contextPath}/login/manager"
		method="post">
		<div class="limiter">
			<div class="container-login100"
				style="background-image: url('${pageContext.request.contextPath}/images/bg-01.jpg');">
				<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
					<form action="${pageContext.request.contextPath}/login/manager"
						method="post" class="login100-form validate-form">
						
						<img src="${pageContext.request.contextPath}/images/logo.png" alt="" style="display: block; margin-left: auto; margin-right: auto;"
					onclick="location.href='${pageContext.request.contextPath}/index'"
					width="300px">
					<span class="login100-form-title p-b-49"> Login </span>
						<div class="wrap-input100 validate-input m-b-23"
							data-validate="Username is reauired">
							<span class="label-input100">Username</span> <input
								class="input100" type="text" name="username"
								placeholder="Type your username"> <span
								class="focus-input100" data-symbol="&#xf206;"></span>
						</div>

						<div class="wrap-input100 validate-input"
							data-validate="Password is required">
							<span class="label-input100">Password</span> <input
								class="input100" type="password" name="password"
								placeholder="Type your password"> <span
								class="focus-input100" data-symbol="&#xf190;"></span>
						</div>
						<p style="color: red; font-style: italic; margin-top: 10px">${message}</p>
						<div class="text-right p-t-8 p-b-31">
							
							<input type="submit" style="border: none; background: white; color: #666666; cursor: pointer;" formaction="${pageContext.request.contextPath}/forgotpassword" value="Forgot password?">
						</div>

						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button onclick="mess()" class="login100-form-btn">Login</button>
							</div>
						</div>

						<div class="txt1 text-center p-t-54 p-b-20">
							<span> Or Sign Up Using </span>
						</div>

						<div class="flex-c-m">
							<a href="#" class="login100-social-item bg1"> <i
								class="fa fa-facebook"></i>
							</a> <a href="#" class="login100-social-item bg2"> <i
								class="fa fa-twitter"></i>
							</a> <a href="#" class="login100-social-item bg3"> <i
								class="fa fa-google"></i>
							</a>
						</div>
						
						<div class="flex-col-c p-t-155">
							<span class="txt1 p-b-17"> Or Sign Up Using </span> <a href="#"
								class="txt2"> Sign Up </a>
						</div>
					</form>
				</div>
			</div>
		</div>


		<div id="dropDownSelect1"></div>

	</form>
</body>
</html>