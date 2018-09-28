<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map d = new HashMap();
		d.put("agree",1);
		d.put("disagree",2);
	request.setAttribute("summary", d);
	request.setAttribute("about","expression");
	
	List li = new ArrayList();
		li.add("admin");
		li.add("admininstrator");
		li.add("amdins");
	request.setAttribute("list",li);
	
	List li2 =new ArrayList();
		li2.add(d);
	Map d2= new HashMap();
		d2.put("agree", 11);
		d2.put("disagree", 4);
		li2.add(d2);
	request.setAttribute("list2",li2);
	
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
		EL로 출력가능한 value 는 꼭 기본형(int,String) 데이터만 가능한건 아니다.<br/>
		Map형 컬렉션, List형 컬렉션 도 , List&lt; Map&gt; 형 컬렉션 다 지원하고 있다. 
	</p>
	<h3>Map 형 컬렉션의 경우</h3>
	<p>
		${requestScope.summary } | ${requestScope.summary.agree } | ${requestScope.summary.disagree}
	</p>
	<p>
		<%-- 
			${requestScope.about.agree } , requestScope.about 객체를 통해 agree 값 접근이 안되면 EL exception 이 발생
		--%>
	</p>
	<h3>list 혹은 배열 형 컬렉션의 경우</h3>
	<p>
		${requestScope.list[0] } | ${requestScope.list[1] } | ${requestScope.list[2]} | ${requestScope.list[3] }
	</p>
	<h3>List&lt;Map&gt; 형 컬렉션의 경우</h3>
	<p>
		${requestScope.list2[0].agree } | ${requestScope.list2[0].disagree } <br/>
		${requestScope.list2[1].agree } | ${requestScope.list2[1].disagree }
	</p>
	
	
	
	
	
</body>
</html>