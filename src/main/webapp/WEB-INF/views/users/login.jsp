<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/templates/boot_css.jsp"></c:import>
</head>
<body>
<c:import url="/WEB-INF/views/templates/layout_header.jsp"></c:import>

<div class="continer-fluid my-5">
	<div class="row col-md-8 offset-md-2">
		<!-- contents 내용 작성 -->
		
		<h1>로그인</h1>
		<h3>${result}</h3>
		<form id="login_form" action="./login" method="post">
		  <div class="mb-3">
		    <label for="userID" class="form-label">아이디</label>
		    <input type="text" value="abcdef123456" name="userId" placeholder="ID" class="form-control" id="userId">
		  </div>

		  <div class="mb-3">
		    <label for="password" class="form-label">비밀번호</label>
		    <input type="password" value="qwe123456@" name="password" placeholder="PW" class="form-control" id="password">
		  </div>	
			
			
			<a href="./findId">id찾기</a>	
			<a href="./findPassword">PW찾기</a>	
		  <button type="submit" class="btn btn-primary" id="login_button">로그인</button>
	
		</form>	
		
		
		
	</div>
</div>





<c:import url="/WEB-INF/views/templates/layout_footer.jsp"></c:import>
<c:import url="/WEB-INF/views/templates/boot_js.jsp"></c:import>
<script src="/resources/js/uesrs/login.js"></script>
</body>
</html>