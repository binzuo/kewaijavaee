<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13 0013
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>signup page</title>
</head>
<body>
<h1>sign up</h1>
<form action="register.jsp" method="post">
    <input type="text" name="email" placeholder="EMAIL" value="18310996173xiaozuo@gmail.com">email<br>
    <input type="password" name="password" placeholder="PASSWORD" value="xinabcd3388725">password<br>
    <select name="cities" multiple="multiple">
        <option value="Beijing">Beijing</option>
        <option value="Hengshui" selected="selected">Hengshui</option>
        <option value="Shijiazhuang">Shijiazhuang</option>
        <option value="Qinhuangdao">Qinhuangdao</option>
    </select><br>
    <input type="checkbox" name="hobbies" value="Study" checked="checked">Study<br>
    <input type="checkbox" name="hobbies" value="Movie">Movie<br>
    <input type="checkbox" name="hobbies" value="Sing">Sing<br>
    <input type="checkbox" name="hobbies" value="Play">Play<br>
    <input type="submit" value="Sign Up">

</form>

</body>
</html>
