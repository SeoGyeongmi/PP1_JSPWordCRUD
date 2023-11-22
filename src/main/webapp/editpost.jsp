<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="org.apache.taglibs.standard.lang.jstl.parser.ParseException" %>
<%@ page import="java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.crud.bean.BoardVO" />
<jsp:setProperty property="*" name="u"/>

<%
	BoardDAO boardDAO = new BoardDAO();
	u.setEditdate(new Timestamp(System.currentTimeMillis()));
	System.out.println(u.getEditdate());
	int i=boardDAO.updateBoard(u);
	response.sendRedirect("posts.jsp");
%>