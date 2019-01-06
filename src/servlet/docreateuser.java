package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

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
        String username = "";
        String password = "";
        int type;
        username = req.getParameter("username");
        password = req.getParameter("password");
        type = Integer.valueOf(req.getParameter("type"));
    }
}
