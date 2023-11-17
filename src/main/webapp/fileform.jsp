<%--
  Created by IntelliJ IDEA.
  User: seogyeongmi
  Date: 11/17/23
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="fileform_ok.jsp" enctype="multipart/form-data"> <!--enctype을 꼭 지정해줘야 파일이 정상적으로 업로드 된다. -->
  Choose Your Image : <input type="file" name="img1" />
  <input type="submit" value="upload" />
</form>
</body>
</html>
