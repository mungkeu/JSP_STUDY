<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/20
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="upload2.do" enctype="multipart/form-data">
    1. 파일 지정하기 : <input type="file" name="uploadFile01"><br>
    2. 파일 지정하기 : <input type="file" name="uploadFile02"><br>
    3. 파일 지정하기 : <input type="file" name="uploadFile03"><br>
    <input type="submit" value="전송">
</form>
</body>
</html>
