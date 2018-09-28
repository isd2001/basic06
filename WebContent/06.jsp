<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] data = "it,life,culture".split(",");
	request.setAttribute("cate", data);
	request.setAttribute("catelast", data.length - 1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL-core</title>
</head>
<body>
	<h1>forEach, forTokens</h1>
	<p>
		세팅된 데이터를 토대로 반복처리해나가면서 HTML을 만들때 쓰는 태그. 
	</p>
	<c:forEach var="i" begin="0" end="9" step="1">
		No. ${i } <br/>
	</c:forEach>
	<hr/>
	<c:forEach var="i" begin="0" end="2" step="1">
		→ ${cate[i] } <br/>
	</c:forEach>
	<hr/>
	<c:forEach var="e" items="${cate }">
		<c:choose>
			<c:when test="${e == 'it' }">
				→ <b>${e }</b> <br/>
			</c:when>
			<c:otherwise>
				→ ${e } <br/>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<hr/>
	<c:forTokens items="out-if-choose-when-forEach-forTokens" delims="-" var="ii">
		<b>${ii }</b>
	</c:forTokens>
	
	<h1>url</h1>
	<p>
		<c:url value="/intro.jsp"/>
		<c:url value="/intro.jsp" var="go"/>
	</p>
	<form action="<c:url value="/intro.jsp"/>">
		<button>gogo</button>
	</form>
	<form action="${go }">
		<button>gogo</button>
	</form>
	<c:url value="/detail.do">
		<c:param name="no" value="11"/>
		<c:param name="mode" value="food"/>
	</c:url>
	<hr/>
	core 카테고리의 set , remove , catch 태그는 사용 빈도는 많지 않느니 , 검색같은걸 해보시고
	<c:remove var="cate"/>
	${cate } <br/>
	<c:set var="condition" value="${empty param.num }"/>
	${condition }  |  ${condition } | ${condition } <br/>
	<c:catch>
		${param.num >=30 } <br/>
	</c:catch>
	
	
	
	
	
	
	
	
	
	
</body>
</html>