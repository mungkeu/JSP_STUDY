<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원의 정보 입력 폼</title>
</head>
<body>
<h2>회원의 정보 입력 폼</h2>
<form method="post" action="02_addMember.jsp">
    <table>
        <thead>
            <tr>
                <th scope="row">이름</th>
                <td><input type="text" name="name" size="20"></td>
            </tr>
            <tr>
                <th scope="row">아이디</th>
                <td><input type="text" name="userid" size="20"></td>
            </tr>
            <tr>
                <th scope="row">비밀번호</th>
                <td><input type="password" name="pwd" size="20"></td>
            </tr>
            <tr>
                <th scope="row">이메일</th>
                <td><input type="email" name="email" size="20"></td>
            </tr>
            <tr>
                <th scope="row">전화번호</th>
                <td><input type="tel" name="phone" size="20"></td>
            </tr>
            <tr>
                <th scope="row">등급</th>
                <td>
                    <input type="radio" name="admin" value="1" checked="checked"> 관리자
                    <input type="radio" name="admin" value="0"> 일반회원
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="전송"> </td>
                <td><input type="reset" value="취소"> </td>
            </tr>
        </thead>
    </table>
</form>
</body>
</html>
