package filter;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author: 我的袜子都是洞
 * @description: 登陆检验过滤器
 * @path: web-filter-DoLonginFilter
 * @date: 2019-01-05 23:05
 */
public class DoLonginFilter implements Filter
{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException
    {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        HttpSession session = request.getSession();
        /**
         * URL是index.jsp或者login.jsp放行
         * 静态资源放行:css js
         */
        if(request.getRequestURL().indexOf("index.jsp") !=-1
            || request.getRequestURL().indexOf("login.jsp") != -1
            || request.getRequestURL().indexOf("dologin") != -1
            || request.getRequestURL().indexOf(".css") != -1
            || request.getRequestURL().indexOf(".js") != -1
        )
        {
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }
        // 已经登陆放行
        if(session.getAttribute("username") != null)
        {
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }else
        {
            // 没有登陆跳转到登陆页
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    public void destroy()
    {

    }
}
