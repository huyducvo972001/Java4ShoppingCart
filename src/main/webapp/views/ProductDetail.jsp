<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${spChiTiet.tenSP}</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/views/style.css">
</head>
<body>
	<div class="heading">
		<div class="container">
			<img src="${pageContext.request.contextPath}/images/logo.png" alt=""
				onclick="location.href='${pageContext.request.contextPath}/index'" width="120px">
			<div class="col">
				<input class="form-control form-control-lg form-control-borderless"
					type="search" placeholder="Tìm kiếm sản phẩm"> <span
					class="glyphicon glyphicon-search search"></span>
			</div>
		</div>
		<div class="list-item">
			<button onclick="location.href='<c:url value="/sanpham?maDM=DM01"/>'">
				<span class="glyphicon glyphicon-phone"></span> Điện thoại
			</button>
			<button onclick="location.href='<c:url value="/sanpham?maDM=DM02"/>'">
				<span class="fas fa-tablet-alt"></span> Tablet
			</button>
			<button onclick="location.href='<c:url value="/sanpham?maDM=DM03"/>'">
				<span class="fa fa-laptop"></span> Laptop
			</button>
			<button onclick="location.href='<c:url value="/sanpham?maDM=DM04"/>'">
				<span class="glyphicon glyphicon-headphones"></span> Phụ kiện
			</button>
			<button onclick="location.href='${pageContext.request.contextPath}/login/manager'">
				<span class="glyphicon glyphicon-user"></span> Tài khoản
			</button>
			<button onclick="location.href='${pageContext.request.contextPath}/cart/list'">
				<span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng
			</button>

		</div>
	</div>

	<div class="container panel panel" style="margin-top: 20px;">
		<div class="panel-body">
			<div class="col-sm-6">
				<img
					src="${pageContext.request.contextPath}/images/${spChiTiet.hinh}"
					width="450px" alt="">
			</div>
			<div class="col-sm-6">
				<h3>${spChiTiet.tenSP}</h3>
				<strike style="font-size: 22px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${spChiTiet.giaSP	}" /><sup>đ</sup></strike> <span
					style="font-size: 22px; font-weight: bold; color: rgb(180, 45, 45);"><fmt:formatNumber type="number" maxFractionDigits="3" value="${spChiTiet.giaSP-(spChiTiet.giaSP*0.1)}" /><sup>đ</sup></span>
				<h5>KHÁCH HÀNG CHỌN 1 TRONG 2 KHUYẾN MẠI SAU:</h5>
				<ul>
					<li><strong>KM1:</strong> Trả góp 0%</li>
					<br>
					<li><strong>KM2:</strong> Giảm ngay 1,000,000đ Tặng Gói Bảo
						hành mở rộng năm thứ 2 và Sạc nhanh không dây Nillkin khi thanh
						toán Online</li>
					<br>
					<li><strong>KHÁCH HÀNG ĐƯỢC KHUYẾN MẠI THÊM:</strong> Giảm
						thêm 1,000,000đ khi mua combo (iPhone + Apple Watch) Giảm thêm
						500,000đ khi mua combo (iPhone + Airpods)</li>
				</ul>
				<form action="${pageContext.request.contextPath}/cart/insert" method="post">
					<input type="hidden" name="cartName" value="${spChiTiet.tenSP}">
				<input type="hidden" name="cartPrice" value="${spChiTiet.giaSP}">
				<input type="hidden" name="imgName" value ="${spChiTiet.hinh}">
				<div class="input-group-append col-sm-12">
					<button class="btn btn-danger" 
						style="font-size: 18px; margin-bottom: 10px; border-radius: 0px !important; width: 100% !important; height: 50px; border-radius: 5px !important;">MUA
						NGAY</button>
				</div>
				<div class="input-group-append col-sm-6">
					<button class="btn btn-primary"
						style="border-radius: 0px !important; width: 100% !important; height: 50px; border-radius: 5px !important;">TRẢ
						GÓP QUA THẺ</button>
				</div>
				<div class="input-group-append col-sm-6">
					<button class="btn btn-primary"
						style="border-radius: 0px !important; width: 100% !important; height: 50px; border-radius: 5px !important;">MUA
						TRẢ GÓP 0%</button>
				</div>
					</form>
			</div>
		</div>

	</div>

	<div class="panel panel footer">
		<div class="panel-body container">
			<div class="col-sm-3">
				<li><a href="">Lịch sử mua hàng</a></li>
				<li><a href="">Cộng tác bán hàng cùng chúng tôi</a></li>
				<li><a href="">Tìm hiểu về mua trả góp</a></li>
				<li><a href="">Chính sách bảo hành</a></li>
			</div>
			<div class="col-sm-3">
				<li><a href="">Giới thiệu công ty (MWG.vn)</a></li>
				<li><a href="">Tuyển dụng</a></li>
				<li><a href="">Gửi góp ý, khiếu nại</a></li>
				<li><a href="">Tìm siêu thị (2.588 shop)</a></li>
			</div>
			<div class="col-sm-3">
				<li><a href=""><strong>Tổng đài hỗ trợ</strong> (Miễn phí
						gọi)</a></li>
				<li><a href="">Gọi mua: <strong>1800.1060</strong> (7:30 -
						22:00)
				</a></li>
				<li><a href="">Kỹ thuật: <strong>1800.1763</strong> (7:30 -
						22:00)
				</a></li>
				<li><a href="">Khiếu nại: <strong>1800.1062</strong> (8:00
						- 21:30)
				</a></li>
			</div>
			<div class="col-sm-3">
				<li><img
					src="${pageContext.request.contextPath}/images/facebook.png" alt="">
					&emsp; <img
					src="${pageContext.request.contextPath}/images/twitter.png" alt="">
					&emsp; <img
					src="${pageContext.request.contextPath}/images/youtube (1).png"
					alt=""></li> <br>
				<li><img
					src="${pageContext.request.contextPath}/images/dathong.png"
					width="130px" alt=""></li>
			</div>
		</div>
	</div>
	<center style="padding-bottom: 15px;">Copyright 2021 © Thiết
		kế website thành phố Hồ Chí Minh</center>
</body>
</html>