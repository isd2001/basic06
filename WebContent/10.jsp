<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<x:parse doc="/book.xml" var="xml">
	<ul>
		<li><x:out select="$xml/books/book[0]/name"/></li>
		<li><x:out select="$xml/books/book[1]/name"/></li>
	</ul>
	</x:parse>

</body>
</html>
