<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<form action="13_fruitSelect.jsp">
  <label for="fruit">과일을 선택하세요.</label>
  <select id="fruit" name="fruit">
    <option value="1">사과</option>
    <option value="2">메론</option>
    <option value="3">바나나</option>
  </select>
  <br>
  <input type="submit" value="전송">
</form>
</body>
</html>
