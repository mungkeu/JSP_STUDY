<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/19
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="upload.do" method="post" enctype="multipart/form-data">
    글쓴이 : <input type="text" name="name"><br>
    제&nbsp;목 : <input type="text" name="title"><br>
    파일 지정하기 : <input type="file" name="uploadFile"><br>
    <input type="submit" value="전송">
</form>
</body>
</html>
