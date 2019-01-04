<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
                <li>
                    <a href="<%=basePath%>logout">注销登陆</a>
                </li>
            </ul>
        </div>

    </nav>
<!-- 导航部分结束 -->