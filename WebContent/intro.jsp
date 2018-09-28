<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 실제 MVC형태로 컨트롤러에서 데이터를 세팅시켜서 JSP 작동시키는게 번거롭기 때문에
	// 위 스크립트릿이 컨트롤러 작업부분이라고 생각하고 , 데이터가 세팅 되서 JSP 가 작동되는 상황이다.
	request.setAttribute("cnt", 3);
	request.setAttribute("about", "Expression");
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL &amp; JSTL</title>
</head>
<body>
	<h1>View 구성을 편하게</h1>
	<p>
		MVC 패턴으로 웹 어플리케이션을 만들다보면 , controller 에서 넘어온 데이터를 이용해서
		HTML을 만들어내야 되는데 , 스크립트릿 이나 표현식을 이용해서 처리하는것도 가능하긴 하지만,
		EL,JSTL 사용법을 익혀두면 좀더 편하게 출력을 설정할수 있다.
	</p>
	<p>
		EL(Expression Language:표현언어) 은 setAttribute 되어있는 데이터들을
		쉽게 접근해서 출력할수 있는 방법이다.
	</p>
	<p>
		requestScope.cnt >> ${requestScope.cnt} <br/>
		requestScope.about >> ${requestScope.about} <br/>
		requestScope.hit >> ${requestScope.hit} <br/>
	</p>
</body>
</html>