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
	<div class="row col-md-8 offset-md-2" style="min-height: 60vh">
		<!-- contents 내용 작성 -->
		<h1>${kind} Detail Page</h1>
		
		<table class="table table-dark ">
			<thead>
				<tr >
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>${dto.boardTitle}</td>
					<td>${dto.userId}</td>
					<td>${dto.boardDate}</td>
					<td>${dto.boardHit}</td>
				</tr>
		
		</table>
		
		
		<div class="alert alert-primary" role="alert" style="min-height: 60vh">
		  ${dto.boardContent}
		</div>
	
	
		<%-- <div>
			<c:forEach items="${dto.boardFileDTOs}" var="f">
				<a href="./fileDown?fileNum=${f.fileNum}">${f.oldName}</a>
			</c:forEach>
		</div> --%>
	
		
		<div>
			
			<a href="./update?boardNum=${dto.boardNum}" class="btn btn-outline-success">수정</a>
			<a href="./delete?boardNum=${dto.boardNum}" class="btn btn-outline-danger">삭제</a>
			
			<%-- <c:if test="${kind eq 'qna'}">
			<a href="./reply?boardNum=${dto.boardNum}" class="btn btn-outline-primary">답글</a>
			</c:if> --%>
		</div>	
		
	</div>
</div>

<c:import url="/WEB-INF/views/templates/layout_footer.jsp"></c:import>
<c:import url="/WEB-INF/views/templates/boot_js.jsp"></c:import>
</body>
</html>