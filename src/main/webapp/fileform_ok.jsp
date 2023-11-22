<%--
  Created by IntelliJ IDEA.
  User: seogyeongmi
  Date: 11/17/23
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%
    String filename = "";
    int sizeLimit = 15 * 1024 * 1024;

    String realPath = request.getServletContext().getRealPath("upload");
    File dir = new File(realPath);
    if(!dir.exists()) dir.mkdir();

    MultipartRequest multipartRequest = null;
    multipartRequest = new MultipartRequest(request, realPath,
            sizeLimit, "utf-8", new DefaultFileRenamePolicy());

    filename = multipartRequest.getFilesystemName("img1");
%>


파일명 : <%=filename%> <br />
<img src = "${pageContext.request.contextPath}/upload/<%=filename%>">
file_ok.jsp
</body>
</html>
