package filter;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
/**
 * @Author: 我的袜子都是洞
 * @Description: 管理员账户url过滤
 * @Date: Created in 2019/1/4 15:43
 */
public class RootFilter implements Filter
{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException
    {
        // 获取Session
        HttpSession session = ((HttpServletRequest)servletRequest).getSession();
        // 根据session判断是否登录
        if(session.getAttribute("username")!=null)
        {
            System.out.println("管理员账户登录");
            // 正常执行
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }
        System.out.println("未登录状态访问管理员url");
        ((HttpServletResponse)servletResponse).sendRedirect("login.jsp");
    }

    @Override
    public void destroy()
    {

    }
}
