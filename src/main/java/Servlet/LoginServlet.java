package Servlet;

import com.mysql.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * Created by Administrator on 2016/11/16 0016.
 */
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email=request.getParameter("email").trim().toLowerCase();
        String password=request.getParameter("password");
        try {
            new Driver();
        Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/user?user=root&password=xinabcd1234");
        String sql="SELECT * FROM user.message WHERE email=? AND password=?";
        PreparedStatement preparedStatement=connection.prepareStatement(sql);
        preparedStatement.setString(1,email);
        preparedStatement.setString(2,password);
        ResultSet resultSet=preparedStatement.executeQuery();


        if (resultSet.next()){
            request.getSession().setAttribute("welcome","欢迎您："+email);
            response.sendRedirect("home.jsp");
        }else {
            request.setAttribute("提示：","账号或密码不正确");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        resultSet.close();
        preparedStatement.close();
        connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
