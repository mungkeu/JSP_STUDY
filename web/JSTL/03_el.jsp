<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL & JSTL</title>
</head>
<body>
<%--
    산술   : +, -, *, /(or div), %(or mod)
    관계형 : ==(or eq), !=(ne), <(or lt), > (or gt), <= (or le), >= (or ge)
    조건   : a ? b : c
    논리   : &&(or and), ||(or or), !(or not)
    null  : empty
--%>
\${5 + 2} : ${5 + 2}<br>
\${5 / 2} : ${5 + 2}<br>
\${5 div 2} : ${5 + 2}<br>
\${5 mod 2} : ${5 + 2}<br>
\${5 > 2} : ${5 + 2}<br>
\${5 gt 2} : ${5 + 2}<br>
\${(5 > 2) ? 5 : 2} : ${(5 > 2) ? 5 : 2}<br>
\${(5 > 2) || (2 < 10)} : ${(5 > 2) || (2 < 10)}<br>
<%
    String input=null;
%>
\${empty input} : ${empty input}<br>

</body>
</html>
