<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setAttribute("data", "jstl");
	request.setAttribute("title", "<marquee>ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</marquee>");
	
	if(Math.random()>0.5){
		request.setAttribute("error","on");
	}
	
	request.setAttribute("num", 321);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - CORE</title>
</head>
<body>
	<h2>jstl's core</h2>
	<p>
		가장 흔한 작업 , 자주하는 작업을 tag화 시켜둔게 core 태그 파트이다.
	</p>
	<h2>core - out tag</h2>
	<p>
	>> ${data }<br/>
	>> <c:out value="${data }" default="없음"/> <br/> 
	>> <c:out value="${datas }" default="없음"/> <br/>
	>> ${empty data ? "not found":data }<br/>
	>> <c:out value="${title }" /><br/>
	</p>
	<h2>core - if tag</h2>
	<p>
		데이터 상태에 따라 if 처리를 해서 HTML을 출력하고자 할때 사용하는 태그
	</p>
	${!empty error }
	<c:if test="${!empty error}">
		<p style="color: red;">
			가입과정에서 문제가 발생했습니다.
		</p>
	</c:if>
	<h2>EL 출력시 true , false 가 찍히는 상황</h2>
	<ul>
		<li> 크기 비교시 = ${num },${num==32 },${empty num },${num<42 },${num>=320 }</li>
		<li> 문자열 비교시 = ${data },${data=="jstl" },${data!="el" }</li>
		<li> NULL 체크시 = ${empty data }, 배열객체 사이즈가 0 이어도 empty true</li>
		<li> and , or 설정해서 최종 true,false 츨력할수있다.<br/>
			> ${num >=10 and num <=30 }
		</li>
	</ul>
	<h2>core - choose when tag</h2>
	<p>
		데이터 상태에 따라 if ~ else if ~ else 형태의 HTML을 만들어내고자 할때 사용하는 태그		
	</p>
	<c:choose>
		<c:when test="${empty param.num }">
			<h1>parameter를 설정해주세요.</h1>
		</c:when>
		<c:when test="${param.num <=20 }">
			<h1 style="color: red;">${param.num }</h1>
		</c:when>
		<c:otherwise>
			<h1 style="color: red;">${param.num }</h1>
		</c:otherwise>
	</c:choose>
	
</body>
</html>