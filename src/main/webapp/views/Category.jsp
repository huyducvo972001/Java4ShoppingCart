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
<title>${category.tenDM} ${NhaCC.tenDM} ${NhaSX.tenDM}</title>
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

	<div class="container" style="margin-top: 20px;">
		<div class="col-sm-3">
			<div class="panel panel-default">
				<div class="panel-heading" style="color: rgb(160, 11, 11);">
					<strong>DANH MỤC SẢN PHẨM</strong>
				</div>
				<div class="list-group">
					<c:forEach var="category" items="${listCategory}">
						<a class="list-group-item" href="<c:url value='/sanpham?maDM=${category.maDM}'/>">${category.tenDM}</a>
					</c:forEach>

				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" style="color: rgb(160, 11, 11);">
					<strong>GIÁ</strong>
				</div>
				<div class="list-group">
					<div class="checkbox">
						<a href="<c:url value='/priceProduct/1'/>" class="list-group-item">< 2.000.000 đ</a>
						<a href="<c:url value='/priceProduct/2'/>" class="list-group-item">2.000.000 -
								4.000.000 đ</a> <a href="<c:url value='/priceProduct/3'/>" class="list-group-item">4.000.000 -
								7.000.000 đ</a> <a href="<c:url value='/priceProduct/4'/>" class="list-group-item">7.000.000 -
								13.000.000 đ</a> <a href="<c:url value='/priceProduct/5'/>" class="list-group-item">13.000.000 -
								20.000.000 đ</a> <a href="<c:url value='/priceProduct/6'/>" class="list-group-item">20.000.000 đ</a>

					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" style="color: rgb(160, 11, 11);">
					<strong>NHÀ CUNG CẤP</strong>
				</div>
				<div class="list-group">
					<c:forEach var="NhaCC" items="${listNhaCC}">
						<a class="list-group-item" href="<c:url value='/sanpham?maDM=${NhaCC.maDM}'/>">${NhaCC.tenDM}</a>
					</c:forEach>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading" style="color: rgb(160, 11, 11);">
					<strong>XUẤT SỨ</strong>
				</div>
				<div class="list-group">
					<c:forEach var="NhaSX" items="${listNhaSX}">
						<a class="list-group-item" href="<c:url value='/sanpham?maDM=${NhaSX.maDM}'/>">${NhaSX.tenDM}</a>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="col-sm-9">
			<div class="panel panel">
				<div class="panel-heading company">
					<img onclick="location.href='<c:url value='/sanpham?maDM=NCC01'/>'"
						src="${pageContext.request.contextPath}/images/iPhone.jpg"
						width="120px"> <img onclick="location.href='<c:url value='/sanpham?maDM=NCC02'/>'"
						src="${pageContext.request.contextPath}/images/Samsung.jpg"
						width="120px"> <img onclick="location.href='<c:url value='/sanpham?maDM=NCC03'/>'"
						src="${pageContext.request.contextPath}/images/OPPO.jpg"
						width="120px"> <img onclick="location.href='<c:url value='/sanpham?maDM=NCC04'/>'"
						src="${pageContext.request.contextPath}/images/Vivo.jpg"
						width="120px"> <img onclick="location.href='<c:url value='/sanpham?maDM=NCC05'/>'"
						src="${pageContext.request.contextPath}/images/xiaomi.png"
						width="120px"> <img onclick="location.href='<c:url value='/sanpham?maDM=NCC06'/>'"
						src="${pageContext.request.contextPath}/images/realme.png"
						width="120px"> <img onclick="location.href='<c:url value='/sanpham?maDM=NCC07'/>'"
						src="${pageContext.request.contextPath}/images/Vsmart.png"
						width="120px"> <img onclick="location.href='<c:url value='/sanpham?maDM=NCC08'/>'"
						src="${pageContext.request.contextPath}/images/OnePlus.jpg"
						width="120px"> <img onclick="location.href='<c:url value='/sanpham?maDM=NCC09'/>'"
						src="${pageContext.request.contextPath}/images/Nokia.jpg"
						width="120px"> <br> <br>
					<div class="fillter">
						<span style="float: left; margin-right: 20px;"><strong>Điện
								thoại</strong></span>
						<div class="checkbox">
							<label><input class="checkbox" type="checkbox" value="">Giảm
								giá</label> &ensp; <label><input class="checkbox"
								type="checkbox" value="">Góp 0%</label>&ensp; <label><input
								class="checkbox" type="checkbox" value="">Độc quyền</label>&ensp;
							<label><input class="checkbox" type="checkbox" value="">Mới</label>
						</div>
						<div class="dropdown" style="float: right; margin-top: -38px;">
							<button class="btn btn-default dropdown-toggle" type="button"
								data-toggle="dropdown">
								Sắp xếp theo: <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">% Giảm</a></li>
								<li><a href="#">Giá cao đến thấp</a></li>
								<li><a href="#">Giá thấp đến cao</a></li>
							</ul>
						</div>

					</div>
				</div>
				<div class="panel-body">
					<c:forEach var="product" items="${listProductdm}">
						<div class="col-sm-4 prod" style="height: 400px !important;">
							<a href="<c:url value='/sanpham?maSP=${product.maSP}' />"> <jsp:include
									page="/views/Prod.jsp">
									<jsp:param value="${product.tenSP}" name="name" />
									<jsp:param value="${product.hinh}" name="image" />
									<jsp:param value="${product.giaSP-(product.giaSP*0.1)}" name="priceNew" />									
									<jsp:param value="${product.giaSP}" name="priceOld" />
									
								</jsp:include>
							</a>
						</div>
					</c:forEach>
					<c:forEach var="product" items="${listProductNSX}">
						<div class="col-sm-4 prod" style="height: 400px !important;">
							<a href="<c:url value='/sanpham?maSP=${product.maSP}' />"> <jsp:include
									page="/views/Prod.jsp">
									<jsp:param value="${product.tenSP}" name="name" />
									<jsp:param value="${product.hinh}" name="image" />
									<jsp:param value="${product.giaSP-(product.giaSP*0.1)}" name="priceNew" />									
									<jsp:param value="${product.giaSP}" name="priceOld" />
									
								</jsp:include>
							</a>
						</div>
					</c:forEach>
					<c:forEach var="product" items="${listProductNCC}">
						<div class="col-sm-4 prod" style="height: 400px !important;">
							<a href="<c:url value='/sanpham?maSP=${product.maSP}' />"> <jsp:include
									page="/views/Prod.jsp">
									<jsp:param value="${product.tenSP}" name="name" />
									<jsp:param value="${product.hinh}" name="image" />
									<jsp:param value="${product.giaSP-(product.giaSP*0.1)}" name="priceNew" />									
									<jsp:param value="${product.giaSP}" name="priceOld" />
									
								</jsp:include>
							</a>
						</div>
					</c:forEach>
					<c:forEach var="product" items="${listProductPrice}">
						<div class="col-sm-4 prod" style="height: 400px !important;">
							<a href="<c:url value='/sanpham?maSP=${product.maSP}' />"> <jsp:include
									page="/views/Prod.jsp">
									<jsp:param value="${product.tenSP}" name="name" />
									<jsp:param value="${product.hinh}" name="image" />
									<jsp:param value="${product.giaSP-(product.giaSP*0.1)}" name="priceNew" />									
									<jsp:param value="${product.giaSP}" name="priceOld" />
									
								</jsp:include>
							</a>
						</div>
					</c:forEach>
					
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