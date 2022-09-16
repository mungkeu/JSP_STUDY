<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<h2>악세사리</h2>
관심항목을 선택하세요.<hr>
<form method="get" action="17_paramValues.jsp">
    <input type="checkbox" name="item" value="신발"> 신발
    <input type="checkbox" name="item" value="가방"> 가방
    <input type="checkbox" name="item" value="벨트"> 벨트<br>
    <input type="checkbox" name="item" value="모자"> 모자
    <input type="checkbox" name="item" value="시계"> 시계
    <input type="checkbox" name="item" value="쥬얼리"> 쥬얼리<br>
    <input type="submit" value="전송">
</form>
</body>
</html>
