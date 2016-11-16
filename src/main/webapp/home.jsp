<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/14 0014
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<h1>南无地藏菩萨摩诃萨！</h1>
<h1>南无阿弥陀佛！</h1>
<%=session.getId()%><br>
<%--<%=(session.getAttribute("message") != null) ? session.getAttribute("email") : ""%>--%>
<%
    if ((session.getAttribute("welcome"))!=null){
        out.println(session.getAttribute("welcome"));
    }else {
        out.println("");
    }
%>
<br>
<a href="/logout">Log Out</a>
</body>
</html>
