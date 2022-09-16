<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 1:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<%
  pageContext.setAttribute("name", "page man");
  request.setAttribute("name", "request man");
  session.setAttribute("name", "session man");
  application.setAttribute("name", "application man");
%>

name : ${name} <hr>
page 속성 : ${pageScope.name} <br>
request 속성 : ${requestScope.name} <br>
session 속성 : ${sessionScope.name} <br>
application 속성 : ${applicationScope.name} <br>
</body>
</html>
