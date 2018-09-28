<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	application.setAttribute("visit",16547);

	Map m = new HashMap();
		m.put("id", "banana");
		m.put("name", "김기현");
	
	session.setAttribute("user", m);
	session.setAttribute("visit", "test");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL &amp; JSTL</title>
</head>
<body>
	<h1>EL</h1>
	<p>
		EL로 접근되는 객체는 request만 되는건 아니고 , 세션 이나 application 에 저장된 객체도 된다.
	</p>
	<h3>applicationScope</h3>
	<p>
		${applicationScope.visit}
	</p>
	<h3>sessionScope</h3>
	<p>
		${sessionScope.user.id} | ${sessionScope.user.name}
	</p>
	<p>
		## requestScope -> sessionScope -> applicationScope 는
		꼭 지정해야 되는건 아니고 , 생략 할수 있다.
		생략시 requestScope 부터 올라가면서 객체 탐색을 한다.
	</p>
	<p>
		${visit} | ${user.id} | ${user.name}  
	</p>
	<p>
		보통 1회성 데이터들인 request에 설정된 객체들은 생략하고 , 그외 영역은 지정하고 사용하는게 일반적이다.
	</p>
	
	
</body>
</html>