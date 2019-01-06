<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="comm/header.jsp" flush="true" />
<jsp:include page="comm/nav.jsp" flush="true" />
<div class="panel panel-info">
    <div class="panel-heading">
        <h2 class="text-center" >Yellow Star <small>物业管理系统</small></h2>
    </div>
    <div class="panel-body">
        <p>Java B/S项目</p>
        <p>前端：</p>
        <ul>
            <li>基于Bootstrap快速开发</li>
        </ul>
        <p>后端：</p>
        <ul>
            <li>Jsp原生开发</li>
        </ul>
        <p>开发进度：</p>
        <ul>
            <li>构建了几个前端页面(2018.12.30)</li>
            <li>简单的登陆验证(2018.12.30)</li>
            <li>登陆验证servlet重构(2018.12.31)</li>
            <li>增加Session机制，保持登陆状态(2018.12.31)</li>
            <li>增加logut，可以及时退出登陆(2018.12.31)</li>
            <li>导航根据用户type自动变换(2018.12.31)</li>
            <li>增加servlet过滤器解决编码问题(2019.1.4)</li>
            <li>增加UserCheck2实体测试类，方便无数据库环境调试(2019.1.4)</li>
            <li>修改登录错误处理机制，使用服务器内部跳转(2019.1.4)</li>
            <li>给管理员添加创建用户功能，增加jsp页面(2019.1.4)</li>
            <li>页面静态url路径由相对路径修改成绝对路径(2019.1.4)</li>
            <li>简化重构登陆处理servlet代码(2019.1.5)</li>
            <li>添加登陆验证过滤器，未登陆状态只能访问主页、登录页、登陆处理页和静态资源(2019.1.5)</li>
            <li>重构UserDao，定义接口，修改两个实现类：数据库实现和测试实现(2019.1.6)</li>
            <li>实现管理员账户创建用户功能(2019.1.6)</li>
        </ul>
    </div>
</div>
<jsp:include page="comm/footer.jsp" flush="true" />