<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/20
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>상품 관리</title>
    <link rel = "stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap" align="center">
<h1>상품 삭제 - 관리자 페이지</h1>
    <form method="post" action="productDelete.do">
        <table>
            <tr>
                <td>
                    <c:choose>
                        <c:when test="${empty product.pictureUrl}">
                            <img src="upload/noimage.gif">
                        </c:when>
                        <c:otherwise>
                            <img src="upload/${product.pictureUrl}">
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <table>
                        <tr>
                            <th style="width: 80px">상품명</th>
                            <td>
                                ${product.name}
                            </td>
                        </tr>
                        <tr>
                            <th>가 격</th>
                            <td>${product.price}">원</td>
                        </tr>
                        <tr>
                            <th>설 명</th>
                            <td>
                                <div style="height: 220px; width: 100%">
                                    ${product.description}
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br>
        <input type="hidden" name="code" value="${product.code}">
        <input type="submit" value="삭제">
        <input type="button" value="목록" onclick="location.href='productList.do'">
    </form>
</div>
</body>
</html>
