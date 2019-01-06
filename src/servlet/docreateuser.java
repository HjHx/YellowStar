package servlet;

import entity.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author: 我的袜子都是洞
 * @description: 处理创建用户请求
 * @path: web-servlet-docreateuser
 * @date: 2019-01-06 14:17
 */
public class docreateuser  extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        PrintWriter out = resp.getWriter();
        // 登陆失败，请检查用户名和密码
        String message = "请求方式错误";
        out.println(message);
        req.setAttribute("message",message);
        req.getRequestDispatcher("/comm/error.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        PrintWriter out = resp.getWriter();
        String username = "";
        String password = "";
        int user_type;
        username = req.getParameter("username");
        password = req.getParameter("password");
        user_type = Integer.valueOf(req.getParameter("user_type"));
        System.out.println("用户提交[username:"+username+",password:"+password+",user_type:"+user_type+"]");
        if(!( "".equals(username) || "".equals(password) || "".equals(user_type) ) )
        {
            // 用户名、密码、用户类型都不为空才能进来
            User newUser = new User();
            newUser.setUsername(username);
            newUser.setPassword(password);
            newUser.setUser_type(Integer.valueOf(user_type));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String create_time =  sdf.format(new Date());
            System.out.println("当前时间："+create_time);
            newUser.setCrate_time(create_time);
            /**
             * 获取用户检查对象
             * 无数据库测试类，恢复数据库连接只需将UserDaoTest变为UserDaoData即可
             */
            UserDaoInterface userDao = new UserDaoData();
            userDao.createUser(newUser);
            out.println("视图层，创建成功");
            return;
        }
        // 创建失败，请检查输入是否完全
        String message = "创建失败，请检查输入是否完全";
        out.println(message);
        req.setAttribute("message",message);
        req.getRequestDispatcher("/comm/error.jsp").forward(req,resp);
    }
}
