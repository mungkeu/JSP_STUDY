<%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/09/17
  Time: 4:41 AM
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
<!-- 원하는 패턴대로 수치 데이터를 표현하기 위한 태그 -->
<!-- value 속성에 지정한 수치 데이터를 3자리마다 콤마로 구분해서 출력-->
<fmt:formatNumber value="1234567.89"/><br>
<!-- value 속성에 지정한 수치 데이터를 구분 기호 없이 출력-->
<fmt:formatNumber value="1234567.89" groupingUsed="false"/><br>
<!-- 퍼센트 형식 지정 0.5 -> 50%-->
<fmt:formatNumber value="0.5" type="percent"/><br>
<!-- 세 자리마다 한 번씩 콤마를 찍어주고 화폐 단위를 표시하는 기호가 수치 데이터 맨 앞에 덧붙여 출력된다.-->
<fmt:formatNumber value="10000" type="currency"/><br>
<!-- 통화 기호를 변경할 수 있다. -->
<fmt:formatNumber value="10000" type="currency" currencySymbol="$"/><br>

<!-- pattern 속성을 사용하면 수치 데이터를 일관성 있게 화면에 출력할 수 있다.
     #, 0, . 을 이용하여 원하는 자리만큼을 원하는 형식으로 출력할 수 있다.
     # : 공백  0 : 0  . : ,는 구분하지 않고 소수점 이하 자리수까지 출력한다. 빈자리면 0을 출력
 -->
<!-- value 속성에 지정한 수치 데이터를 소수점에 맞추어 소수점 이하 2자리까지 출력하되 빈자리는 공백으로 표시-->
<fmt:formatNumber value="1234567.8912345" pattern="#,#00.0#"/><br>
<!-- 소수점 이하 2자리까지 출력하되 빈자리는 공백으로 표시 -->
<fmt:formatNumber value="1234567.8" pattern="#,#00.0#"/><br>
<!-- 수치 데이터를 구분 기호(,) 없이 출력하며 소수점 이하 3자리까지 출력하기 위해 빈자리를 0으로 채운다.-->
<fmt:formatNumber value="1234567.89" pattern=".000"/><br>
</body>
</html>
