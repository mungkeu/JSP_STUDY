<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 5:06 AM
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
<!-- 날짜와 시각 형식을 표현하는 태그
     해당 태그로 다양한 형태의 날짜를 출력하기 위해서는 java.util.Date 클래스로 객체를 생성해야 한다. -->
<!-- 날짜 객체 생성-->
<c:set var="now" value="<%=new java.util.Date()%>"></c:set>

<!-- 출력 결과 : Thu Sep 26 04:02:09 KST 2013 -->
${now} <!-- 현재 시간 정보를 포함한 날짜 객체 정보를 출력한다. -->

<!-- yyyy. MM. dd 형태로 출력 -->
<fmt:formatDate value="${now}"></fmt:formatDate> <br>

date : <fmt:formatDate value="${now}" type="date"></fmt:formatDate> <br>

<!-- 시간 형태로 출력할 형식을 지정, 오전 hh:MM:ss 형태로 출력 -->
time : <fmt:formatDate value="${now}" type="time"></fmt:formatDate> <br>

<!-- 날짜와 시간을 모두 출력하고자 할 경우에는 type 속성에 both를 지정한다. -->
<!-- yyyy.MM.dd 오전 hh:MM:ss 형태로 출력된다. -->
both : <fmt:formatDate value="${now}" type="both"></fmt:formatDate> <br>

default : <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"></fmt:formatDate><br>
short : <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"></fmt:formatDate><br>
medium : <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"></fmt:formatDate><br>
long : <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"></fmt:formatDate><br>
full : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate><br>

<!-- 원하는 포맷을 지정 -->
<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"></fmt:formatDate> <br>
</body>
</html>
