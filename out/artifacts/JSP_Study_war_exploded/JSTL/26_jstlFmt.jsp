<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 5:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>EL과 JSTL</title>
</head>
<body>
<c:set var="now" value="<%=new java.util.Date()%>"></c:set>
<p>
    톰캣 서버의 기본 로케일 : <%=response.getLocale()%> <br>
<hr>
    <fmt:setLocale value="ko_KR"></fmt:setLocale>
    로케일을 한국어로 설정후 로케일 확인 : <%=response.getLocale()%> <br>
    통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> <br>
    날짜 : <fmt:formatDate value="${now}"></fmt:formatDate> <br>
<hr>
    <fmt:setLocale value="ja_JP"></fmt:setLocale>
    로케일을 일본어로 설정후 로케일 확인 : <%=response.getLocale()%> <br>
    통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> <br>
    날짜 : <fmt:formatDate value="${now}"></fmt:formatDate> <br>
<hr>
    <fmt:setLocale value="en_US"></fmt:setLocale>
    로케일을 영어로 설정후 로케일 확인 : <%=response.getLocale()%> <br>
    통화(currency) : <fmt:formatNumber value="10000" type="currency"></fmt:formatNumber> <br>
    날짜 : <fmt:formatDate value="${now}"></fmt:formatDate> <br>
</p>
</body>
</html>
