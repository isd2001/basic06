<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setAttribute("count", 12345678);
	request.setAttribute("p", (double)11/2);
	request.setAttribute("update", new Date(System.currentTimeMillis()-10000000));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL-fmt</title>
</head>
<body>
	<h1>fmt</h1>
	<p>
		수치 나 , 날짜형태 포매팅 설정해서 출력할때 사용하는 태그
	</p>
	<ul>
		<li>${count }</li>
		<li><fmt:formatNumber value="${count }"/></li>
		<li><fmt:formatNumber value="${count }" var="f"/>${f }</li>
		<li>${p } / <fmt:formatNumber value="${p }" pattern="#,##0,00%"/></li>
	</ul>
	<ul>
		<li>${update }</li>
		<li><fmt:formatDate value="${update }"/></li>
		<li><fmt:formatDate value="${update }" pattern="yyyy-MM-dd HH:mm"/></li>
	</ul>
	<!-- 
		fmt bundle, message 태그를 이용하면 , 접속지역에 따라서 출력시키는 문자열을 다르게 설정하는
		국제화 설정이 가능하다. - 
	 -->
	 

</body>
</html>