package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author: 我的袜子都是洞
 * @description:
 * @path: web-servlet-logout
 * @date: 2018-12-31 15:55
 */
public class logout extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        // 清除Session
        req.getSession().removeAttribute("username");
        req.getSession().removeAttribute("type");
        req.getSession().removeAttribute("uid");
        req.getSession().removeAttribute("create_time");
        req.getSession().invalidate();
        System.out.println("用户退出 Session清除成功！");
        resp.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        this.doGet(req,resp);
    }
}
