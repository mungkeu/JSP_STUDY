<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: songimyeong
  Date: 2022/08/15
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
자바 코드 <hr>
<%
    if(request.getParameter("id") != null){
%>
    == 연산자 사용 결과 : <%=request.getParameter("id")=="pinkSung"%><br><%--객체를 비교하므로 false--%>
    equals() 사용 결과 : <%=request.getParameter("id").equals("pinkSung")%><br><%--객체안의 값을 비교하므로 true--%>
<%
    }else{
        out.print("id를 전달해주세요.");
    }
%>
</body>
</html>
