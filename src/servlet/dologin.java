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
        // 设置响应内容
        resp.setContentType("text/html;charset=utf-8");
        // 设置请求编码
        req.setCharacterEncoding("utf-8");
        System.out.println("POST请求正确");
        String username = "";
        String password = "";
        // 获取POST过来的用户名和密码
        username = req.getParameter("username");
        password = req.getParameter("password");
        // 终端显示POST过来的信息，方便测试
        System.out.println("POST过来的username:"+username+",password:"+password);
        if( "".equals(username) )
        {
            out.print("用户名为空");
        }else
        {
            if ("".equals(password))
            {
                out.print("密码为空");
            }else
            {
                User user =  UserCheck.getUser(username);
                // 账户不存在
                if (user == null)
                {
                    out.print("用户:"+username+"不存在");
                }else
                {
                    if(user.getUsername().equals(username) && user.getPassword().equals(password))
                    {
                        // 密码正确
                        System.out.println("账户密码验证成功，允许登陆");
                        out.print("登陆成功");
                    }else
                    {
                        // 密码错误
                        System.out.println("账户存在，密码错误，禁止登陆");
                        out.print("密码错误");
                    }
                }
            }
        }
    }
}