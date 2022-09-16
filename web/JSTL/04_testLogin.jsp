<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/14
  Time: 10:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
당신이 입력한 정보입니다.(고전적인 방식). <hr>
아이디 : <%=request.getParameter("id")%><br>
비밀번호 : <%=request.getParameter("pwd")%><br><br>

당신이 입력한 정보입니다.(EL방식). <hr>
아이디 : ${param.id} <br>
비밀번호 : ${param.pwd} <br>
</body>
</html>
