<%@ page import="com.crud.dao.BoardDAO" %>
<%@ page import="com.crud.bean.BoardVO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: seogyeongmi
  Date: 11/14/23
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Data</title>
</head>
<body>
<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u = boardDAO.getBoard(Integer.parseInt(id));

%>

<h1>View Data</h1>



<tr>
    <td>Category: <%= u.getCategory()%> <br><br></td>
    <td>Title: <%= u.getTitle()%> <br><br></td>
    <td>Writer: <%= u.getWriter()%> <br><br></td>
    <td>Content: <%= u.getContent()%> <br><br></td>
    <td>생성된 날짜: <%= u.getRegdate()%> <br></td>
    <td>최근 수정된 날짜: <%= u.getEditdate()%> <br></td>


</tr>


<%-- <%= u.getRegdate()%>, <%= u.getEditdate()%>r가 null값
--%>

<%//System.out.println(${u.getSeq()});%>
<a href="posts.jsp">목록</a>
<a href="editform.jsp?id=${u.getSeq()}">Edit</a>
<%--  ${u.getSeq()} 가 null 값
--%>


</body>
</html>
