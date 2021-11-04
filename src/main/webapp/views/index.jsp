<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TECH STORE</title>
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
			<img src="${pageContext.request.contextPath}/images/logo.png"
				onclick="location.href='${pageContext.request.contextPath}/index'"
				width="120px">
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
	<div class="container">
		<div class="panel panel intro">
			<div class="panel-body">
				<div class="col-sm-8">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
							<li data-target="#myCarousel" data-slide-to="4"></li>
							<li data-target="#myCarousel" data-slide-to="5"></li>

						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img onclick="location.href='${pageContext.request.contextPath}/sanpham?maDM=DM01'" src="${pageContext.request.contextPath}/images/ss1.png"
									alt="Los Angeles" style="width: 100%; height: 335px;">
							</div>
							<div class="item">
								<img onclick="location.href='${pageContext.request.contextPath}/sanpham?maDM=DM02'" src="${pageContext.request.contextPath}/images/ss2.png"
									alt="Chicago" style="width: 100%; height: 335px;">
							</div>
							<div class="item">
								<img onclick="location.href='${pageContext.request.contextPath}/sanpham?maDM=DM05'" src="${pageContext.request.contextPath}/images/ss3.png"
									alt="New york" style="width: 100%; height: 335px;">
							</div>
							<div class="item ">
								<img onclick="location.href='${pageContext.request.contextPath}/sanpham?maDM=DM04'" src="${pageContext.request.contextPath}/images/ss4.png"
									alt="Los Angeles" style="width: 100%; height: 335px;">
							</div>
							<div class="item">
								<img onclick="location.href='${pageContext.request.contextPath}/sanpham?maDM=DM01'" src="${pageContext.request.contextPath}/images/ss5.png"
									alt="Chicago" style="width: 100%; height: 335px;">
							</div>
							<div class="item">
								<img onclick="location.href='${pageContext.request.contextPath}/sanpham?maDM=DM01'" src="${pageContext.request.contextPath}/images/ss6.png"
									alt="New york" style="width: 100%; height: 335px;">
							</div>
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="col-sm-6">
						<img onclick="location.href='${pageContext.request.contextPath}/sanpham?maSP=SP04'" src="${pageContext.request.contextPath}/images/bner1.png"
							alt="" width="160px" height="160px"> <img onclick="location.href='${pageContext.request.contextPath}/sanpham?maSP=SP22'"
							src="${pageContext.request.contextPath}/images/bner2.png" alt=""
							width="160px" height="160px" style="margin-top: 15px;">
					</div>
					<div class="col-sm-6">
						<img src="${pageContext.request.contextPath}/images/bner3.png" onclick="location.href='${pageContext.request.contextPath}/sanpham?maSP=SP67'"
							alt="" width="160px" height="160px"> <img onclick="location.href='${pageContext.request.contextPath}/sanpham?maSP=SP60'"
							src="${pageContext.request.contextPath}/images/bner4.png" alt=""
							width="160px" height="160px" style="margin-top: 15px;">
					</div>
				</div>
			</div>
		</div>
		<div class="prodHot">
			<div class="inforHead">
				<div class="panel panel">
					<div class="panel-heading">
						<strong style="font-size: 18px;">SẢN PHẨM KHUYẾN MÃI</strong>
					</div>
					<div class="panel-body">
						<c:forEach var="product" items="${listSaleProduct}">
							<div class="col-sm-3 prod">
								<a href="<c:url value='/sanpham?maSP=${product.maSP}' />">
									<div class="imgProd">
										<img src="images/${product.hinh}" width="250px">
									</div>
									<div class="nameProd">
										<br> <span style="font-size: 16px;">${product.tenSP}</span>
									</div>
									<div class="priceProd">
										<h4>
											<strong><fmt:formatNumber type="number"
													maxFractionDigits="3"
													value="${product.giaSP-(product.giaSP*0.1)}" /></strong>
										</h4>
										<h4 style="text-decoration: line-through; font-size: 16px;">
											<fmt:formatNumber type="number" maxFractionDigits="3"
												value="${product.giaSP}" />
										</h4>
									</div>
								</a>
								<div class="describe">
									<li>Màn hình 6.7", Chip Apple A14 Bionic</li>
									<li>RAM 6 GB, ROM 512 GB</li>
									<li>Camera sau: 3 camera 12 MP</li>
									<li>Camera trước: 12 MP</li>
									<li>Pin 3687 mAh, Sạc 20 W</li>
								</div>
							</div>
						</c:forEach>
					</div>

				</div>
			</div>
		</div>
		<div class="panel panel intro2">
			<div class="panel-body">
				<div class="col-sm-4">
					<img src="${pageContext.request.contextPath}/images/bner5.png"
						width="350px">
				</div>
				<div class="col-sm-4">
					<img src="${pageContext.request.contextPath}/images/bner6.png"
						width="350px">
				</div>
				<div class="col-sm-4">
					<img src="${pageContext.request.contextPath}/images/bner7.png"
						width="350px">
				</div>
			</div>
		</div>
		<div class="prodSell">
			<div class="inforHead">
				<div class="panel panel">
					<div class="panel-heading">
						<strong style="font-size: 18px;">SẢN PHẨM BÁN CHẠY NHẤT</strong>
					</div>
					<div class="panel-body">
						<c:forEach var="product" items="${listHotProduct}">
							<div class="col-sm-3 prod">
								<a href="<c:url value='/sanpham?maSP=${product.maSP}' />">
									<div class="imgProd">
										<img src="images/${product.hinh}" width="250px">
									</div>
									<div class="nameProd">
										<br> <span style="font-size: 16px;">${product.tenSP}</span>
									</div>
									<div class="priceProd">
										<h4>
											<strong><fmt:formatNumber type="number"
													maxFractionDigits="3"
													value="${product.giaSP-(product.giaSP*0.1)}" /></strong>
										</h4>
										<h4 style="text-decoration: line-through; font-size: 16px;">
											<fmt:formatNumber type="number" maxFractionDigits="3"
												value="${product.giaSP}" />
										</h4>
									</div>
								</a>

							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="prodAcc">
			<div class="inforHead">
				<div class="panel panel">
					<div class="panel-heading">
						<strong style="font-size: 18px;">PHỤ KIỆN</strong>
					</div>
					<div class="panel-body">
						<c:forEach var="product" items="${listPKProduct}">
							<div class="col-sm-3 prod">
								<a href="<c:url value='/sanpham?maSP=${product.maSP}' />">
									<div class="imgProd">
										<img src="images/${product.hinh}" width="250px">
									</div>
									<div class="nameProd">
										<br> <span style="font-size: 16px;">${product.tenSP}</span>
									</div>
									<div class="priceProd">
										<h4>
											<strong><fmt:formatNumber type="number"
													maxFractionDigits="3"
													value="${product.giaSP-(product.giaSP*0.1)}" /></strong>
										</h4>
										<h4 style="text-decoration: line-through; font-size: 16px;">
											<fmt:formatNumber type="number" maxFractionDigits="3"
												value="${product.giaSP}" />
										</h4>
									</div>
								</a>

							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="panel panel" style="background-color: white;">
			<div class="panel-body">
				<div class="col-sm-3">
					<h4>CÁC THƯƠNG HIỆU LỚN</h4>
				</div>
				<div class="col-sm-9">
					<img src="${pageContext.request.contextPath}/images/th1.png"
						class="col-sm-2" alt=""> <img
						src="${pageContext.request.contextPath}/images/th2.png"
						class="col-sm-2" alt=""> <img
						src="${pageContext.request.contextPath}/images/th3.png"
						class="col-sm-2" alt=""> <img
						src="${pageContext.request.contextPath}/images/th4.png"
						class="col-sm-2" alt=""> <img
						src="${pageContext.request.contextPath}/images/th2.png"
						class="col-sm-2" alt=""> <img
						src="${pageContext.request.contextPath}/images/th3.png"
						class="col-sm-2" alt="">
				</div>
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
