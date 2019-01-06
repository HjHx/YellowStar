<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String name = "";
    int user_type = 0;
    if (session.getAttribute("username") != null)
    {
        name = (String)session.getAttribute("username");
        user_type = (int)session.getAttribute("user_type");
    }
    switch (user_type){
        case 1:
%>
<!-- 导航部分 -->
<%--管理员导航--%>
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="<%=basePath%>index.jsp">Yellow Star</a>
    </div>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="<%=basePath%>index.jsp">主页</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户管理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="createuser.jsp">创建用户</a></li>
                    <li><a href="usermanage.jsp">管理用户</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">费用管理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-header">电费管理</li>
                    <li><a href="#">电费录入</a></li>
                    <li><a href="#">电池查询</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">水费管理</li>
                    <li><a href="#">水费录入</a></li>
                    <li><a href="#">水费查询</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">燃气费管理</li>
                    <li><a href="#">燃气费录入</a></li>
                    <li><a href="#">燃气费查询</a></li>
                    <li class="dropdown-header">停车场</li>
                    <li><a href="#">停车信息录入</a></li>
                    <li><a href="#">停车费用查询</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">业务受理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">报修受理</a></li>
                    <li><a href="#">投诉查询</a></li>
                </ul>
            </li>
        </ul>
        <%--导航右侧部分--%>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">管理员：<%=name%><span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">账户信息管理</a></li>
                </ul>
            </li>
            <li>
                <a href="<%=basePath%>logout">注销登陆</a>
            </li>
        </ul>
    </div>
</nav>
<!-- 导航部分结束 -->
<%
            break;
        case 2:
%>
<!-- 导航部分 -->
<%--物业导航--%>
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="<%=basePath%>index.jsp">Yellow Star</a>
    </div>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="<%=basePath%>index.jsp">主页</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">业主查询<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">业主户型信息查询</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">费用管理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-header">电费管理</li>
                    <li><a href="#">电费录入</a></li>
                    <li><a href="#">电池查询</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">水费管理</li>
                    <li><a href="#">水费录入</a></li>
                    <li><a href="#">水费查询</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">燃气费管理</li>
                    <li><a href="#">燃气费录入</a></li>
                    <li><a href="#">燃气费查询</a></li>
                    <li class="dropdown-header">停车场</li>
                    <li><a href="#">停车信息录入</a></li>
                    <li><a href="#">停车费用查询</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">业务受理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">报修受理</a></li>
                    <li><a href="#">投诉查询</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">设备管理<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">设备信息添加</a></li>
                    <li><a href="#">设备信息查询</a></li>
                </ul>
            </li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">物业：<%=name%><span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">账户信息管理</a></li>
                </ul>
            </li>
            <li>
                <a href="<%=basePath%>logout">注销登陆</a>
            </li>
        </ul>
    </div>
</nav>
            <!-- 导航部分结束 -->
<%
            break;
        case 3:
%>
<!-- 导航部分 -->
<%--业主导航--%>
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="<%=basePath%>index.jsp">Yellow Star</a>
    </div>
    <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li>
                <a href="<%=basePath%>index.jsp">主页</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">费用查询<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-header">仪表费用</li>
                    <li><a href="#">电费查询</a></li>
                    <li><a href="#">水费查询</a></li>
                    <li><a href="#">燃气费查询</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">停车场</li>
                    <li><a href="#">停车费用查询</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">住户报修<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">报修申请</a></li>
                    <li><a href="#">报修查询</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">物业投诉<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">投诉提交</a></li>
                    <li><a href="#">投诉查询</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">业主：<%=name%><span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">户型资料查看</a></li>
                    <li><a href="#">账户信息管理</a></li>
                </ul>
            </li>
            <li>
                <a href="<%=basePath%>logout">注销登陆</a>
            </li>
        </ul>
    </div>
</nav>
            <!-- 导航部分结束 -->
<%
            break;
        default:
%>
            <!-- 导航部分 -->
            <%--游客导航--%>
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="<%=basePath%>index.jsp">Yellow Star</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="<%=basePath%>index.jsp">主页</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>aboutme.jsp">关于我们</a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="<%=basePath%>login.jsp">当前身份：游客</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>login.jsp">点击登陆</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- 导航部分结束 -->
<%
            break;
    }
%>