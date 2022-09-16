<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 3:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<c:set var="msg" value="Hello" scope="page"/>
1. ${msg} <br>
<c:set var="age">30</c:set>
2. ${age} <br>
<hr>
<c:set var="member" value="<%=new com.saeyan.javabeans.MemberBean()%>"></c:set>
<c:set target="${member}" property="name" value="손기명"></c:set>
<c:set target="${member}" property="userid" value="admin"></c:set>
3. ${member} <br>

<c:set var="add" value="${10 + 5}"></c:set>
3. ${add} <br>

<c:set var="flag" value="${10>5}"></c:set>
4. ${flag} <br>
</body>
</html>
