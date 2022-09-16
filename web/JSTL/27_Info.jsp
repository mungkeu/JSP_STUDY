<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 5:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>EL과 JSTL</title>
</head>
<body>
<h3> post 방식에서 한글 깨짐 방지 </h3>
<form method="post" action="27_jstlFmt.jsp">
    <label for="name">이름 : </label>
    <input type="text" id="name" name="name" value="">
    <input type="submit" value="전송">
</form>
</body>
</html>
