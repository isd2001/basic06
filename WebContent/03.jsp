<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String srch=request.getParameter("srch");
	// dao로 작업하고 결과물은 뽑고 , 사용자 검색 키워드를 HTML 에 찍어야 한다면,
	request.setAttribute("srch",srch);
	String[] opt = request.getParameterValues("opt");
	request.setAttribute("opt",opt);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL &amp; JSTL</title>
</head>
<body>
	<h1>EL 출력</h1>
	<p>
		EL이 setAttribute 된 데이터들 외에 , 몇가지 데이터들은 바로 출력을 할수 있게 지원한다.
	</p>
	<h3>param</h3>
	<p>
		검색어 : ${srch } / ${param.srch } <br/>
		검색옵션 : ${paramValues.opt[0]} / ${paramValues.opt[1]} / ${paramValues.opt[2]}
	</p>
	<h3>cookie</h3>
	<p>
		${cookie.keep.value}
	</p>
	<h3>pageContext</h3>
	<p>
		setAttribute 되어있는 데이터가 아니라 , 내장객체를 이용해서 얻을수 있는 정보들을 출력하고자
		할때 pageContext 를 이용해서 출력할수 있다.<br/>
		ex >> getXXXXXXXXXX() 
	</p>
	<p>
		${pageContext.request.remoteAddr } | ${pageContext.session.id } |
		${pageContext.servletContext.contextPath } | ${pageContext.request.contextPath }
	</p>
	
</body>
</html>