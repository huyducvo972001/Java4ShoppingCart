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
<title>Giỏ hàng</title>
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
	<script>
	Number.prototype.format = function () {

	    if ((1.1).toLocaleString().indexOf(".") >= 0) {
	        return this.toString().split( /(?=(?:\d{3})+(?:\.|$))/g ).join( "," );
	    }
	    else {
	        return this.toString().split( /(?=(?:\d{3})+(?:,|$))/g ).join( "." );
	    }
	};
   function tinhtien(){
            var nguoilon_arr = document.getElementsByClassName("nl");
            var sl = document.getElementsByClassName('sl')
            var tongnguoilon = 0;           
            for (var i=0; i<nguoilon_arr.length; i++){
                var songuoilon = nguoilon_arr[i].innerText;            
                songuoilon = parseInt(songuoilon);  
                var sol = sl[i].innerText;            
                sol = parseInt(sol);  
                var tong1 = sol*songuoilon;
                tongnguoilon += tong1;  
            }   
            document.getElementById("tongnl").innerText = 'Tổng tiền: '+tongnguoilon.format();
            document.getElementById("tongnl2").value = tongnguoilon;
    }
    setInterval(() => {
                tinhtien()
            }, 100);
  </script>
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
			<button
				onclick="location.href='${pageContext.request.contextPath}/login/manager'">
				<span class="glyphicon glyphicon-user"></span> Tài khoản
			</button>
			<button
				onclick="location.href='${pageContext.request.contextPath}/cart/list'">
				<span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng
			</button>

		</div>
	</div>

	<div class="container panel panel" style="margin-top: 20px;">
		<p style="margin-top: 20px; font-size: 18px;"><strong style="color: red;">Giỏ hàng của: </strong>${user}</p>
		<form action="${pageContext.request.contextPath}/cart/pay" method="post">
		<input name="nameCustom" hidden="" value="${user}">
		<input type="text" id="tongnl2" name="totalCart" hidden="" value="0">
		
		<table class="table table-striped">
			<thead>
				<tr>
					<th hidden="" scope="col">Mã hoá đơn</th>
					<th scope="col">Sản phẩm</th>
					<th scope="col">Tên sản phẩm</th>
					<th scope="col">Giá</th>
					<th scope="col">Số lượng</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${listCart}">
					<tr>
						<th hidden="" scope="row">${item.getHoaDon()}</th>
						<th style="height: 100px; margin: auto;"><img src="${pageContext.request.contextPath}/images/${item.getHinh()}"
					width="70px" alt=""></th>
						<th>${item.getTenSP()} ${item.getHinh()}</th>
						<th hidden=""><div class="nl"><fmt:formatNumber type="number"
													groupingUsed = "false"
													value="${item.getGia()}" /></div></th>
						<th><fmt:formatNumber type="number"
													maxFractionDigits="3"
													value="${item.getGia()}" /></th>
						<th ><div class="sl"  contenteditable="true">${item.getSoLuong()}</div></th>
						<th><a 
							href="${pageContext.request.contextPath}/cart/delete/${item.getHoaDon()}">Xoá</a></th>
					</tr>
				</c:forEach>				
			</tbody>
			
		</table>	
		<div style="margin-top: 20px; font-size: 18px; font-weight: bold; float: left; color: red;" id="tongnl" ></div>
		<button style="padding-right: 30px; padding-left: 30px; margin-top: 20px; margin-bottom:10px; float: right;" onclick='location.href="${pageContext.request.contextPath}/cart/pay"' class="btn btn-danger">Thanh Toán</button>
		
	</form>
		
	</div>

	
</body>
</html>