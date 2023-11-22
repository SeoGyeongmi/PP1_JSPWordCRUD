<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>

</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");
	System.out.println("editform.jsp - 현재 불러온 글의 id는 " + id + "입니다.");
	BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
%>

<script>
	function updateEditdate() {

		var now = new Date();
		var formattedDate = now.toISOString();

		// hidden input 필드를 통해 서버로 Editdate 전송
		document.getElementById("editdate").value = formattedDate;

		// 필요한 경우 다른 작업 수행
		return true; // 폼 제출을 계속 진행
	}
</script>
<h1>Edit Form</h1>
<form action="editpost.jsp" method="post" onsubmit="updateEditdate()">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
	<tr><td>Category:</td><td>
		<input list="category" name="category" value="<%= u.getCategory()%>">
		<datalist id="category">
			<option value="메모">
			<option value="자기계발">
			<option value="독서">
			<option value="할 일">
		</datalist></td></tr>
<tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
<tr><td>Writer:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>