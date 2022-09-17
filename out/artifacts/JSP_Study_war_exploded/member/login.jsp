<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/18
  Time: 12:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 관리</title>
    <script type="text/javascript" src="/script/member.js"></script>
</head>
<body>
<h2>로그인</h2>
<form action="login.do" method="post" name="frm">
    <table>
        <tr>
            <th scope="col">아이디</th>
            <td><input type="text" name="userid" value="${userid}"></td>
        </tr>
        <tr>
            <th scope="col">암 호</th>
            <td><input type="password" name="pwd"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
                <input type="reset" value="취소">&nbsp;&nbsp;
                <input type="button" value="회원 가입" onclick="location.href='join.do'">
            </td>
        </tr>
        <tr>
            <td colspan="2">${message}</td>
        </tr>
    </table>
</form>
</body>
</html>
