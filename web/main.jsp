<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/18
  Time: 1:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty loginUser}">
    <jsp:forward page="login.do"/>
</c:if>
<html>
<head>
    <title>회원 관리</title>
    <script type="text/javascript" src="member.js"></script>
</head>
<body>
<form action="logout.do">
    <table>
        <tr>
            <td>안녕하세요. ${loginUser.name}(${loginUser.userid})님</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="로그아웃"> &nbsp&nbsp
                <input type="button" value="회원정보변경" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
