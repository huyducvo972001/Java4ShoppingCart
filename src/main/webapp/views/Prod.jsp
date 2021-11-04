<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<div class="imgProd">
		<img src="${pageContext.request.contextPath}/images/${param.image}"
			width="230px">
	</div>
	<div class="nameProd">
		<br> <span style="font-size: 16px;">${param.name}</span>
	</div>
	<div class="priceProd">
		<h4>
			<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${param.priceNew}" /></strong>
			
		</h4>
		<h4 style="text-decoration: line-through; font-size: 16px;"><fmt:formatNumber type="number" maxFractionDigits="3" value="${param.priceOld}" /></h4>
	</div>

