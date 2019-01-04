package filter;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
/**
 * @Author: 我的袜子都是洞
 * @Description: 登录验证过滤
 * @Date: Created in 2019/1/4 14:41
 */
public class LoginFilter implements Filter
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
        if(session.getAttribute("username")==null)
        {
            System.out.println("未登录状态访问");
            filterChain.doFilter(servletRequest,servletResponse);
        }else
        {
            System.out.println("登录状态访问");
            // 正常执行
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    @Override
    public void destroy()
    {

    }
}
