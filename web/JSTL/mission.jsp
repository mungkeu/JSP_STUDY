<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 6:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>
<form action=missionresult.jsp method="post">
    아이디 : <input type="text" name="userid"><br>
    암호&nbsp;&nbsp;&nbsp; : <input type="password" name="pwd"><br>
    <input type="radio" name="admin" checked="checked" value="1"> 사용자
    <input type="radio" name="admin" value="2"> 관리자<br>
    <input type="submit" value="로그인">
</form>
</body>
</html>
