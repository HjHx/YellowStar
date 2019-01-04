package filter;
import javax.servlet.*;
import java.io.IOException;

/**
 * @Author: 我的袜子都是洞
 * @Description: 编码过滤器
 * @Date: Created in 2019/1/4 12:29
 */
public class EncodingFilter implements Filter
{


    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException
    {
        servletRequest.setCharacterEncoding("UTF-8");
        servletResponse.setContentType("text/html;charset=UTF-8");
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy()
    {

    }
}
