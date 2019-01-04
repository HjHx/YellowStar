package servlet;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import entity.*;

/**
 * @author: 我的袜子都是洞
 * @description: 处理login请求
 * @path: web-servlet-dologin
 * @date: 2018-12-31 14:28
 */
public class dologin extends HttpServlet
{
    // 处理GET请求
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        // 给doling发送get请求，自动跳转到login
        resp.sendRedirect("login.jsp");
        System.out.println("GET请求访问dologin,自动跳转到login.jsp");
    }

    // 处理POST请求
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        PrintWriter out = resp.getWriter();
        String username = "";
        String password = "";
        // 获取POST过来的用户名和密码
        username = req.getParameter("username");
        password = req.getParameter("password");
        // 终端显示POST过来的信息，方便测试
        System.out.println("账户[username:"+username+",password:"+password+"]尝试登陆.");
        /**
         * 无数据库测试类，恢复数据库连接只需将UserCheck2变为UserCheck即可
         */
        User user =  UserCheck2.getUser(username);
        // 用户名不为空才验证
        if(!("".equals(username)))
        {
            // 验证账户密码
            if(user.getUsername().equals(username) && user.getPassword().equals(password))
            {
                // 终端信息输出：方便观测
                System.out.println("验证成功，允许登陆");
                // 设置账户相关Session
                req.getSession().setAttribute("username",username);
                req.getSession().setAttribute("type",user.getType());
                req.getSession().setAttribute("uid",user.getUid());
                req.getSession().setAttribute("create_time",user.getCrate_time());
                // 使用服务器内部跳转
                req.getRequestDispatcher("profile.jsp").forward(req,resp);
            }
        }
        // 登陆失败，请检查用户名和密码
        String message = "登陆失败，请检查用户名和密码";
        out.println(message);
        req.setAttribute("message",message);
        req.getRequestDispatcher("/comm/error.jsp").forward(req,resp);
    }
}
