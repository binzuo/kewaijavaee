package Servlet;

import com.mysql.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;

/**
 * Created by Administrator on 2016/11/16 0016.
 */
public class RegisterServlet extends HttpServlet {
    @Override   //ctrl+o
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        try {
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
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //request.setAttribute("message","注册成功");

        //request.getRequestDispatcher("index.jsp").forward(request, response);
        response.sendRedirect("index.jsp");

    }
}
