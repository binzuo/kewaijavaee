<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/14 0014
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String email=request.getParameter("email").trim().toLowerCase();
    String password=request.getParameter("password");
    new Driver();
    Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/user?user=root&password=xinabcd1234");
    String sql="SELECT * FROM user.message WHERE email=? AND password=?";
    PreparedStatement preparedStatement=connection.prepareStatement(sql);
    preparedStatement.setString(1,email);
    preparedStatement.setString(2,password);
    ResultSet resultSet=preparedStatement.executeQuery();


    if (resultSet.next()){
        session.setAttribute("您好",email);
        response.sendRedirect("home.jsp");
    }else {
        request.setAttribute("提示：","账号或密码不正确");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
    resultSet.close();
    preparedStatement.close();
    connection.close();

%>
</body>
</html>
