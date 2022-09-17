<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/18
  Time: 2:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 가입</title>
    <script type="text/javascript" src="script/member.js"></script>
</head>
<html>
<body>
<h2>회원 가입</h2>
'*' 표시 항목은 필수 입력 항목입니다.
<form method="post" action="join.do" name="frm">
    <table>
        <thead>
        <tr>
            <th scope="row">이름</th>
            <td><input type="text" name="name" size="20"></td>
        </tr>
        <tr>
            <th scope="row">아이디</th>
            <td>
                <input type="text" name="userid" size="20" id="userid">*
                <input type="hidden" name="reid" size="20">
                <input type="button" value="중복 체크" onclick="idCheck()">
            </td>
        </tr>
        <tr>
            <th scope="row">암 호</th>
            <td><input type="password" name="pwd" size="20">*</td>
        </tr>
        <tr height="30">
            <th scope="row" width="80">암호 확인</th>
            <td><input type="password" name="pwd_check" size="20">*</td>
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
                <input type="radio" name="admin" value="0" checked="checked"> 일반회원
                <input type="radio" name="admin" value="1"> 관리자
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="확인" onclick="return joinCheck()">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="취소">
            </td>
        </tr>
        <tr><td colspan="2">${message}</td> </tr>
        </thead>
    </table>
</form>
</body>
</html>
