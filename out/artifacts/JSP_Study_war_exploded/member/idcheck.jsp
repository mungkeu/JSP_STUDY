<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/18
  Time: 2:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>회원 관리</title>
    <script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>아이디 중복확인</h2>
<form action="idCheck.do" method="get" name="frm">
    아이디 <input type="text" name="userid" value="${userid}">
        <input type="submit" value="중복 체크">
    <br>
    <c:if test="${result==1}">
        <script type="text/javascript">
            opener.document.frm.userid.value="";
        </script>
        ${userid}는 이미 사용 중인 아이디입니다.
    </c:if>
    <c:if test="${result==-1}">
        ${userid}는 사용 가능한 아이디입니다.
        <input type="button" value="사용" class="cancel" onclick="idok()">
    </c:if>
</form>
</body>
</html>
