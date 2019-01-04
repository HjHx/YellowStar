<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String)session.getAttribute("username");
    int uid = (int) session.getAttribute("uid");
    int type = (int)session.getAttribute("type");
    String crate_time = (String)session.getAttribute("create_time");
%>
<jsp:include page="../comm/header.jsp" />
<jsp:include page="../comm/root_nav.jsp" />
<jsp:include page="../comm/nav_end.jsp" />

<div class="panel panel-primary">
    <div class="panel-heading text-center">创建用户</div>
    <div class="panel-body">
        <form action="root/docreateuser" method="POST">
            <div class="form-group">
                <label >用户名</label>
                <p class="help-block">支持中文、字母、数字</p>
                <input type="text" class="form-control" id="username" placeholder="用户名">
            </div>
            <div class="form-group">
                <label >初始密码</label>
                <input type="password" class="form-control" id="password" placeholder="初始密码">
            </div>
            <div class="form-group">
                <label  name="type">用户类别</label>
                <select name="type" class="form-control" >
                    <option value="3">业主</option>
                    <option value="2">物业</option>
                    <option value="1">管理员</option>
                </select>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="remember">记住我
                </label>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-info">立即创建</button>
            </div>

        </form>
    </div>
</div>

<jsp:include page="../comm/footer.jsp" />