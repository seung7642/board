<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>게시글 읽기</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/CSS/bootstrap.min.css">
</head>
<body>
<br><br><br>
<div class="container">
	<table border="1" width="100%">
	<tr>
		<th class="text-center">번호</th>
		<td class="text-center">${articleData.article.number}</td>
	</tr>
	<tr>
		<th class="text-center">작성자</th>
		<td class="text-center">${articleData.article.writer.name}</td>
	</tr>
	<tr>
		<th class="text-center">제목</th>
		<td class="text-center"><c:out value='${articleData.article.title}' /></td>
	</tr>
	<tr>
		<th class="text-center" colspan="2">내용</th>
	</tr>
	<tr>
		<td class="text-center" colspan="2" height=100><u:pre value='${articleData.content}'/></td>
	</tr>
	<tr>
		<td colspan="2">
			<c:set var="pageNo" value="${empty param.pageNo ? '1' : param.pageNo}" />
			<a href="list.do?pageNo=${pageNo}">[목록]</a>
			<c:if test="${authUser.id == articleData.article.writer.id}">
			<a href="modify.do?no=${articleData.article.number}">[게시글수정]</a>
			<a href="delete.do?no=${articleData.article.number}">[게시글삭제]</a>
			</c:if>
		</td>
	</tr>
	</table>
</div>

</body>
</html>