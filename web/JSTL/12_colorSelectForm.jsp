<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 3:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<form action="12_colorSelect.jsp">
  <label for="color">색상을 선택하세요.</label><br>
  <select id="color" name="color">
    <option value="1">빨강</option>
    <option value="2">초록</option>
    <option value="3">파랑</option>
  </select>
  <input type="submit" value="전송">
</form>
</body>
</html>
