<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL-SQL</title>
</head>
<body>
	<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@kkh.mockingu.com:1521:xe"
		user="dev" password="123" var="ds"/>
	<sql:query var="rs" dataSource="${ds }" sql="select * from account"/>
	
	<c:forEach var="r" items="${rs.rows }">
		-> ${r.id } (${r.name }) ,(${r.gender })<br/>
	</c:forEach>
	<%--
		jstl-sql 태그는 MVC 에서는 사용할일이 없다.
		jsp에서는 데이터 작업에 관여를 하지 않는게 MVC 기본 흐름이기 때문에 
	 --%>
	 
	 

</body>
</html>