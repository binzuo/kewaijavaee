<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13 0013
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index page</title>
  </head>
  <body>
  <h1>index page</h1>
  <%=session.getId()%>
  <form action="login.jsp" method="post">
    <input type="text" name="email" value="18310996173xiaozuo@gmail.com">eamil<br>
    <input type="password" name="password" value="xinabcd3388725">password<br>
    <input type="submit" value="Log In">
  </form>
  <a href="signup.jsp">Sign up</a><br>
  <%=request.getAttribute("message")!=null?request.getAttribute("message"):""%>
 <%-- <%
    if ((request.getAttribute("message"))!=null){
      out.println(request.getAttribute("message"));
    }else {
      out.println("");
    }
  %>--%>
  <%
    if ((request.getAttribute("提示："))!=null){
      out.println(request.getAttribute("提示："));
    }else {
      out.println("");
    }
  %>

  </body>
</html>
