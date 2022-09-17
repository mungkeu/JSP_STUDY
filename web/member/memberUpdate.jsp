<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/18
  Time: 3:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>회원 관리</title>
    <script type="text/javascript" src="/script/member.js"></script>
</head>
<body>
<h2>회원 수정</h2>
<form action="memberUpdate.do" method="post" name="frm">
    <table>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" size="20" value="${mVo.name}" readonly></td>
        </tr>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="userid" size="20" value="${mVo.userid}" readonly>*</td>
        </tr>
        <tr>
            <td>암&nbsp;호</td>
            <td><input type="password" name="pwd" size="20">*</td>
        </tr>
        <tr height="30">
            <td width="80">암호 확인</td>
            <td><input type="password" name="pwd_check" size="20">*</td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="email" name="email" size="20" value="${mVo.email}"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="tel" name="phone" size="20" value="${mVo.phone}"></td>
        </tr>
        <tr>
            <td>등급</td>
            <td>
            <c:choose>
                <c:when test="${mVo.admin==0}">
                    <input type="radio" name="admin" value="0" checked="checked">일반회원
                    <input type="radio" name="admin" value="1">관리자
                </c:when>
                <c:otherwise>
                    <input type="radio" name="admin" value="0">일반회원
                    <input type="radio" name="admin" value="1" checked="checked">관리자
                </c:otherwise>
            </c:choose>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="확인" onclick="return joinCheck()">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
