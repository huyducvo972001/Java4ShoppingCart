<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Manager</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<!-- Material Kit CSS -->
<link
	href="${pageContext.request.contextPath}/assets/css/material-dashboard.css?v=2.1.2"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
	integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<style>
.get-in-touch {
	width: 1000px;
	margin: 50px auto;
	position: relative;
	padding: 50px 30px 50px 30px;
	box-shadow: 2px 2px 10px gray;
}

.get-in-touch .title {
	text-align: center;
	text-transform: uppercase;
	letter-spacing: 3px;
	font-size: 3.2em;
	font-weight: bold;
	line-height: 48px;
	padding-bottom: 48px;
	color: #5543ca;
	background: #5543ca;
	background: -moz-linear-gradient(left, #f4524d 0%, #5543ca 100%)
		!important;
	background: -webkit-linear-gradient(left, #f4524d 0%, #5543ca 100%)
		!important;
	background: linear-gradient(to right, #f4524d 0%, #5543ca 100%)
		!important;
	-webkit-background-clip: text !important;
	-webkit-text-fill-color: transparent !important;
}

.contact-form .form-field {
	position: relative;
	margin: 32px 0;
}

.contact-form .input-text {
	display: block;
	width: 100%;
	height: 36px;
	border-width: 0 0 2px 0;
	border-color: #5543ca;
	font-size: 18px;
	line-height: 26px;
	font-weight: 400;
}

.contact-form .input-text:focus {
	outline: none;
}

.contact-form .input-text:focus+.label, .contact-form .input-text.not-empty+.label
	{
	-webkit-transform: translateY(-24px);
	transform: translateY(-24px);
}

.contact-form .label {
	position: absolute;
	left: 20px;
	bottom: 11px;
	font-size: 18px;
	line-height: 50px;
	font-weight: 400;
	color: #5543ca;
	cursor: text;
	transition: -webkit-transform .2s ease-in-out;
	transition: transform .2s ease-in-out;
	transition: transform .2s ease-in-out, -webkit-transform .2s ease-in-out;
}

.contact-form .submit-btn {
	display: inline-block;
	background-color: #000;
	background-image: linear-gradient(125deg, #a72879, #064497);
	color: #fff;
	text-transform: uppercase;
	letter-spacing: 2px;
	font-size: 16px;
	padding: 8px 16px;
	border: none;
	width: 200px;
	cursor: pointer;
}
</style>
<script>
   $(function () {
		    $('#myTab li:nth-child('+${tabNum}+') a').tab('show')
  });

</script>
<script type="text/javascript">
var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) 
      console.log(output.src);
    }
 };
</script>
<script>
    function getoutput(event) {

      if (!event || !event.target || !event.target.files || event.target.files.length === 0) {
        return;
      }

      const name = event.target.files[0].name;
      const lastDot = name.lastIndexOf('.');
      const fileName = name
      outputfile.value = fileName;


      }
  </script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<body>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">${message}</script>
	<c:url var="url" value="/user/"></c:url>
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="white">
			<div class="logo">
				<img style="display: block; margin-left: auto; margin-right: auto;"
					src="${pageContext.request.contextPath}/images/logo.png" alt=""
					onclick="location.href='${pageContext.request.contextPath}/index'"
					width="150px">
				<div>
					<img style="display: block; margin-left: auto; margin-right: auto;"
						src="https://image.flaticon.com/icons/png/128/1177/1177568.png"
						width="48px">
					<h4 style="margin-top: 20px; text-align: center;">${user}</h4>
				</div>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav" id="myTab">
					<li class="nav-item"><a class="nav-link" href="#s0"
						data-toggle="tab"> <i class="material-icons">perm_identity</i>
							<p>Nh??n vi??n</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#s1"
						data-toggle="tab"> <i class="material-icons">contacts</i>
							<p>Th??ng tin nh??n vi??n</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#s2"
						data-toggle="tab"> <i class="material-icons">call_to_action</i>
							<p>Qu???n l?? s???n ph???m</p>
					</a></li>
					<hr>
					<li class="nav-item"><a class="nav-link" href="#s3"
						data-toggle="tab"> <i class="material-icons">assessment</i>
							<p>Th???ng k??</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#s4"
						data-toggle="tab"> <i class="material-icons">grid_on</i>
							<p>Ho?? ????n</p>
					</a></li>
					<hr>
					<li class="nav-item"
						onclick="location.href='${pageContext.request.contextPath}/login/manager'"><a
						class="nav-link" data-toggle="tab"> <i class="material-icons">exit_to_app</i>
							<p>????ng xu???t</p>
					</a></li>

					<!-- your sidebar here -->
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav style="width: 95%; margin: auto;">
				<div class="tab-content text-center">
					<div class="tab-pane active" id="s0">
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">Username</th>
									<th scope="col">Password</th>
									<th scope="col">Full name</th>
									<th scope="col">Email</th>
									<th scope="col">Phone</th>
									<th scope="col">Role</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td scope="row">${item.getUserName()}</td>
										<td>${item.getPassWord()}</td>
										<td>${item.getFullName()}</td>
										<td>${item.getEmail()}</td>
										<td>${item.getPhone()}</td>
										<td>${item.getRole()}</td>
										<td><a href="${url}edit/2/${item.getId()}">Edit</a></td>

									</tr>
								</c:forEach>
							</tbody>
						
						</table>

					</div>
					<div class="tab-pane" id="s1">
						<section class="get-in-touch" style="background-color: white;">
							<h1 class="title">Th??ng tin nh??n vi??n</h1>
							<form action="${url}index" method="post" class="contact-form row">

								<input id="name" name="id" hidden="" value="${form.getId()}"
									class="input-text js-input" type="text" required>

								<div class="form-field col-lg-6 ">
									<input id="email" name="userName" value="${form.getUserName()}"
										class="input-text js-input" type="text" required> <label
										class="label" for="email">Username</label>
								</div>
								<div class="form-field col-lg-6 ">
									<input id="company" name="passWord"
										value="${form.getPassWord()}" class="input-text js-input"
										type="text" required> <label class="label"
										for="company">Password</label>
								</div>
								<div class="form-field col-lg-6 ">
									<input id="fullname" name="fullName"
										value="${form.getFullName()}" class="input-text js-input"
										type="text" required> <label class="label" for="phone">Fullname</label>
								</div>
								<div class="form-field col-lg-6">
									<input id="email" name="email" value="${form.getEmail()}"
										class="input-text js-input" type="email" required> <label
										class="label" for="message">Email</label>
								</div>
								<div class="form-field col-lg-6">
									<input id="phone" name="phone" value="${form.getPhone()}"
										class="input-text js-input" type="tel" required> <label
										class="label" for="message">Phone Number</label>
								</div>
								<div class="form-field col-lg-6" style="font-size: 20px">
									<input id="role" name="role" ${form.getRole()?'checked':''}
										value="true" type="radio" required>Admin &nbsp; <input
										id="role" name="role" ${form.getRole()?'':'checked'}
										value="false" type="radio" required>User <label
										class="label" for="message">Role</label>
								</div>
								<div class="form-field col-lg-12">
									<input class="submit-btn" type="submit" value="create"
										formaction="${url}create"> <input class="submit-btn"
										type="submit" value="update" formaction="${url}update">
									<input class="submit-btn" type="submit" value="delete"
										formaction="${url}delete"> <input class="submit-btn"
										type="submit" value="Reset" formaction="${url}index">
								</div>
							</form>
						</section>
					</div>
					<div class="tab-pane" id="s2">
						<c:url var="urlSP" value="/product/"></c:url>
					
						<form action="${urlSP}index" method="post"
							enctype="multipart/form-data"
							style="width: 1000px; margin: auto; margin-top: 20px; background-color: white; padding: 50px 30px 50px 30px; box-shadow: 2px 2px 10px gray;">
							<div class="row" style="margin-bottom: 30px;">
								<div class="col">
									<label for="">M?? s???n ph???m</label> <input class="form-control"
										value="${formProd.getMaSP()}" name="maSP" required
										placeholder="Nh???p m?? s???n ph???m">
								</div>
								<div class="col">
									<label for="">T??n s???n ph???m</label> <input class="form-control"
										value="${formProd.getTenSP()}" name="tenSP" required
										placeholder="Nh???p t??n s???n ph???m">
								</div>
								<div class="col">
									<label for="">Gi?? s???n ph???m</label> <input class="form-control"
										value="${formProd.getGiaSP()}" name="giaSP" required
										placeholder="Nh???p gi?? s???n ph???m">
								</div>
							</div>
							<div class="row" style="margin-bottom: 30px;">
								<div class="col">
									<label for="">M?? t???</label> <input class="form-control"
										value="${formProd.getMoTa()}" name="moTa" placeholder="M?? t???"> 
								</div>
								<div class="col">
									<label for="">M?? danh m???c</label> <input class="form-control"
										value="${formProd.getMaDM()}" name="maDM" required
										placeholder="Nh???p m?? danh m???c">
								</div>
								<div class="col">
									<label for="">M?? nh?? s???n xu???t</label> <input
										class="form-control" value="${formProd.getMaNhaSX()}" required
										name="maNhaSX" placeholder="Nh???p m?? nh?? s???n xu???t">
								</div>
							</div>
							<div class="row">
								<div class="col">
									<label for="">M?? nh?? s???n xu???t</label> <input
										class="form-control" value="${formProd.getMaNhaCC()}" required
										name="maNhaCC" placeholder="M?? nh?? cung c???p">
								</div>

								<div class="col">
									<label for="">H??nh s???n ph???m</label> <input type="hidden"
										class="form-control" id='outputfile' name="hinh" required
										value="${formProd.getHinh()}" placeholder="hinhsp"> <input
										class="form-control" name="hinhs" type="file" id='inputfile'
										onChange='getoutput(event);loadFile(event)'> <img
										alt=""
										style="margin-top: 20px; margin-bottom: 20px; float: right;"
										src="${pageContext.request.contextPath}/images/${formProd.getHinh()}"
										width="250px"> <img
										style="margin-top: 20px; margin-bottom: 20px; float: right;"
										id="output" width="250px" />

								</div>
							</div>
			
							<input class="btn btn-primary" type="submit" value="create"
								formaction="${urlSP}3/create"> <input
								class="btn btn-primary" type="submit" value="update"
								formaction="${urlSP}3/update"> <input
								class="btn btn-primary" type="submit" value="delete"
								formaction="${urlSP}3/delete"> <input
								class="btn btn-primary" type="submit" value="Reset"
								formaction="${url}index">
						</form>
							
						<table style="margin: auto; margin-top: 50px; font-size: 14px;"
							class="table table-striped">
							<thead>
								<tr style="font-size: 20px;">
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">M??
										s???n ph???m</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">T??n
										s???n ph???m</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">Gi??
										s???n ph???m</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">M??
										t???</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">H??nh</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">M??
										danh m???c</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">M??
										s???n xu???t</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">M??
										nh?? cung c???p</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${itemsProd}">
									<tr>
										<td>${item.getMaSP()}</td>
										<td>${item.getTenSP()}</td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.getGiaSP()}" /></td>
										<td>${item.getMoTa()}</td>
										<td>${item.getHinh()}</td>
										<td>${item.getMaDM()}</td>
										<td>${item.getMaNhaSX()}</td>
										<td>${item.getMaNhaCC()}</td>
										<td><a href="${urlSP}edit/3/${item.getMaSP()}">Edit</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="tab-pane" id="s3">
						<div class="container"
							style="display: flex; flex-direction: column; align-items: center;">
							<center style="color: #333; font-weight: bold; font-size: 30px;">Th???ng
								k?? s???n ph???m b??n ch???y nh???t</center>
							<canvas id="myChartSP" style="width: 100%; max-width: 1000px"></canvas>
							</br>
							<center style="color: #333; font-weight: bold; font-size: 30px;">Th???ng
								k?? danh m???c</center>
							<canvas id="myChart" style="width: 100%; max-width: 1000px"></canvas>
							</br>
							<center style="color: #333; font-weight: bold; font-size: 30px;">Th???ng
								k?? nh?? s???n xu???t</center>
							<canvas id="myChart2" style="width: 100%; max-width: 1000px"></canvas>
							</br>
							<center style="color: #333; font-weight: bold; font-size: 30px;">Th???ng
								k?? nh?? cung c???p</center>
							<canvas id="myChart3" style="width: 100%; max-width: 1000px"></canvas>
						</div>

						<script>
var xValues = [${tenIV}];
var yValues = [${soLieuIV}];
var barColors = [
  "#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145"
];

new Chart("myChartSP", {
  type: "doughnut",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: ""
    }
  }
});
</script>
						<script>
var xValues = [${ten}];
var yValues = [${soLieu}];
var barColors = [
  "#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145"
];

new Chart("myChart", {
  type: "pie",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: ""
    }
  }
});
</script>
						<script>
var xValues = [${tenSX}];
var yValues = [${soLieuSX}];
var barColors = [
  "#AC58FA",
  "#886A08",
  "#FE2E9A",
  "#61210B",
  "#58FA82",
  "#E0F8F7",
  "#FA58F4",
  "#ECF6CE",
  "#F7FE2E"
];

new Chart("myChart2", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: ""
    }
  }
});
</script>
						<script>
var xValues = [${tenCC}];
var yValues = [${soLieuCC}];
var barColors = [
  "#F5A9A9",
  "#FA8258",
  "#2ECCFA",
  "#5FB404",
  "#FACC2E",
  "#FFFF00",
  "#A5DF00",
  "#ECCEF5",
  "#298A08",
  "#31B404"
];

new Chart("myChart3", {
  type: "doughnut",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: ""
    }
  }
});
</script>
					</div>
					<div class="tab-pane" id="s4">
					<c:url var="urlBill" value="/bill/"></c:url>
						<script>
    function dong(){
      document.getElementById('displayBill').style.display  = 'none';
    }
    function mo(){
      document.getElementById('displayBill').style.display  = 'block';
    }
    ${dong}
  </script>
						<table style="margin: auto; margin-top: 50px; font-size: 14px;"
							class="table table-striped">
							<thead>
								<tr style="font-size: 20px;">
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">M??
										ho?? ????n</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">T??n
										kh??ch h??ng</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">Ng??y
										mua</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">T???ng
										ti???n</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;">Ghi
										ch??</th>
									<th
										style="font-size: 14px; text-align: center; font-weight: bold;"></th>

									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${formBill}">
									<tr>
										<td>${item.getCodeBill()}</td>
										<td>${item.getNameCustomer()}</td>
										<td>${item.getDatePay()}</td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.getTotal()}" /></td>
										<td>${item.getNote()}</td>
										<td><a href="${urlBill}5/view/${item.getCodeBill()}">View</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div id="displayBill">
							<table class="table table-borderless">
								<thead>
									<tr>
										<th style="font-size: 14px; text-align: center; font-weight: bold;">M?? chi ti???t ho?? ????n</th>
										<th style="font-size: 14px; text-align: center; font-weight: bold;">T??n s???n ph???m</th>
										<th style="font-size: 14px; text-align: center; font-weight: bold;">Gi??</th>
										<th style="font-size: 14px; text-align: center; font-weight: bold;">S??? l?????ng</th>
										<th style="font-size: 14px; text-align: center; font-weight: bold;">M?? ho?? ????n</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${insTable}">
										<tr>
											<td>${item.getHoaDon()}</td>
											<td>${item.getTenSP()}</td>
											<td><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.getGia()}" /></td>
											<td>${item.getSoLuong()}</td>
											<td>${item.getMaHoaDon()}</td>
										</tr>
									</c:forEach>
								</tbody>
								<button style="margin-top: 20px;" onclick="dong()" class="btn btn-default">????ng</button>
							</table>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>
	</div>
</body>
</html>