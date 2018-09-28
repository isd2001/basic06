<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setAttribute("data", "jsp standard tag library");	
	request.setAttribute("array", new Object[5]);
	request.setAttribute("newLine", "\n");
	request.setAttribute("newLine2", "<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl-fn</title>
</head>
<body>
	<h1>JSTL-fn</h1>
	<p>
		fn은 문자열 계산관련작업을 태그화 시켜둔것
	</p>
	<h2>${data }</h2>
	<ul>
		<li>${fn:contains(data, 'jsp') }</li>
		<li>${fn:indexOf(data, newLine) }</li>
		<li>${fn:indexOf(data, newLine2) }</li>
		
		<li>${fn:length(data) }</li>
		<li>${fn:length(array) } / ※ length function은 리스트형 객체에도 작동하고, list size가 계산됨</li>
		<li>${fn:replace(data,'jsp','JSP') }</li>
		<li>${fn:substring(data, 0, 10) }</li>
		<li>${fn:substring(data, 0, -1) }</li>
		<li>${fn:substringAfter(data, 'tag') }</li>
		<li>${fn:substringBefore(data, 'standard') }</li>
		<li>${fn:substringBefore(data, newLine ) }</li>
	</ul>
</body>



</html>