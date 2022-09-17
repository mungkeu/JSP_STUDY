<%@ page import="com.saeyan.dto.MemberDAO" %>
<%@ page import="com.saeyan.javabeans.MemberBean" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/18
  Time: 12:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  MemberDAO memDao = MemberDAO.getInstance();
  Connection conn = memDao.getConnection();
  out.println("DBCP 연동 성공");
%>
</body>
</html>
