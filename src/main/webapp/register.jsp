<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Array" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13 0013
  Time: 19:31
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
    String[] cities=request.getParameterValues("cities");
    String[] hobbies=request.getParameterValues("hobbies");
    //out.println(email);
    //out.println(password);
    //IDEA 关联MySql 数据库
    //创建数据库及其表。
    //maven.org(网站)>mysql (SEARCH)>mysql-connector-java(单击all(56))>单击5.1.40
    //>Gradle/Grails 复制  compile 'mysql:mysql-connector-java:5.1.40'
    //粘贴到 build.gradle 然后同步。同步后重新部署 Alt+Shift+F10>Unnamed>Redeploy
    //---------------------------------------------------------------------------
    //java连接MySql：
    new Driver();//(com.mysql.jdbc)
    Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","xinabcd1234");
//    Connection connection1=DriverManager.getConnection("jdbc:mysql://localhost:3306/user?user=root&password=xinabcd1234");
    String sql="INSERT INTO user.message VALUES(NULL,?,?,?,?)";
    PreparedStatement preparedStatement=connection.prepareStatement(sql);
    preparedStatement.setString(1,email);
    preparedStatement.setString(2,password);
    preparedStatement.setString(3, Arrays.asList(cities).toString());
    preparedStatement.setString(4,Arrays.asList(hobbies).toString());
    preparedStatement.executeUpdate();
    connection.close();
    preparedStatement.close();
    //request.getRequestDispatcher("index.jsp").forward(request, response);
    response.sendRedirect("index.jsp");



%>
</body>
</html>
