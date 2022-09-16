<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 1:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
고전적인 방식 : <%--스크립트립에서의 복잡한 자바 코드--%>
<%
  String str1 = request.getParameter("num1");
  String str2 = request.getParameter("num2");

  int num1 = Integer.parseInt(str1);
  int num2 = Integer.parseInt(str2);
%>
<%=num1%> + <%=num2%> = <%=num1+num2%>

EL 방식 : <%--보다 깔끔하고 간단한 코드--%>
${param.num1} + ${param.num2} = ${param.num1+param.num2}
</body>
</html>
