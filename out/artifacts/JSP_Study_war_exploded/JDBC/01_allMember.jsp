<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
    DB 연동순서
    1. JDBC 드라이버 로드
    2. 데이터베이스와 연결
    3. SQL문 실행
    4. 데이터베이스와 연결 끊음
-->
<%! // 선언부는 첫 방문자에 의해서 단 한번 수행한다.
    Connection conn=null;
    Statement stmt=null;
    ResultSet rs=null;

    String url="jdbc:oracle:thin:@localhost:1521:XE";
    String uid="songimyeong";
    String pass="1234";
    String sql="select * from member";
%>
<html>
<head>
    <title>JDBC</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
<table>
<thead>
    <tr>
        <th scope="col">이름</th>
        <th scope="col">아이디</th>
        <th scope="col">암호</th>
        <th scope="col">이메일</th>
        <th scope="col">전화번호</th>
        <th scope="col">권한(1:관리자, 0:일반회원)</th>
    </tr>
</thead>
<%
try{
    Class.forName("oracle.jdbc.driver.OracleDriver"); // JDBC 드라이버 로드
    conn= DriverManager.getConnection(url, uid, pass);  // 데이터베이스와 연결, DriverManager.getConnection()로 얻음
    stmt=conn.createStatement(); // 질의 갱신 실행, connection.createStatement()로 얻음
    rs=stmt.executeQuery(sql); // 결과물을 가져옴, statement.executeQuery()로 얻음

    /*
    * next() : 현재 행에서 한행 앞으로 이동
    * previouse() : 현재 행에서 한행 뒤로 이동
    * first() : 현재 행에서 첫 번째 행의 위치로 이동
    * last() : 현재 핸에서 마지막 행의 위치로 이동
    */
    while(rs.next()){
        out.println("<tbody>");
        out.println("<tr>");
        out.println("<td>"+rs.getString("name")+"</td>");   // rs.getString(1);
        out.println("<td>"+rs.getString("userid")+"</td>"); // rs.getString(2);
        out.println("<td>"+rs.getString("pwd")+"</td>");    // rs.getString(3);
        out.println("<td>"+rs.getString("email")+"</td>");  // rs.getString(4);
        out.println("<td>"+rs.getString("phone")+"</td>");  // rs.getString(5);
        out.println("<td>"+rs.getInt("admin")+"</td>");     // rs.getInt(6));
        out.println("</tr>");
        out.println("</tbody>");
    }
}catch(Exception e){
    e.printStackTrace();
}finally{
    try{
        if(rs!=null) rs.close();
        if(stmt!=null) stmt.close();
        if(conn!=null) conn.close();
    }catch(Exception e){
        e.printStackTrace();
    }
}
%>
</table>
</body>
</html>
