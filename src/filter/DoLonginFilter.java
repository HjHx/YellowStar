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
        System.out.println("访问URI："+request.getRequestURI());
        String path = request.getRequestURL().substring(request.getContextPath().length());
        /**
         * 静态资源放行处理
         * 处理规则：url包含 /static/ 就放行
         */
        if(path.matches(".+(/static/).+"))
        {
            System.out.println("放行静态url： "+request.getRequestURL());
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }

        /**
         * URL是index.jsp或者login.jsp放行
         */
        if(request.getRequestURL().indexOf("index.jsp") !=-1
            || request.getRequestURL().indexOf("login.jsp") != -1
            || request.getRequestURL().indexOf("dologin") != -1
        )
        {
            System.out.println("无状态 允许访问URL："+request.getRequestURL());
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }
        // 已经登陆放行
        if(session.getAttribute("username") != null)
        {
            System.out.println("登陆状态访问URL："+request.getRequestURL());
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }else
        {
            System.out.println("状态：未登录  访问URL："+request.getRequestURL());
            System.out.println("处理：跳转login.jsp");
            // 没有登陆跳转到登陆页
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    public void destroy()
    {

    }
}
