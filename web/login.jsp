<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 终端显示方便观察，测试代码，上线须删
    System.out.println("访问登录页面");

    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<jsp:include page="comm/header.jsp" flush="true"/>
<jsp:include page="comm/nav.jsp"  />
<!-- 中间标题 -->
<div class="page-header">
    <h1 class="text-center">
        欢迎登陆 <small>Yellow Star 物业管理系统</small>
    </h1>
</div>
<!-- 登陆表单 -->
<form class="form-horizontal" action="<%=basePath%>dologin" method="POST" >
    <div class="form-group">
        <label for="username" class="col-sm-3 control-label">用户名</label>
        <div class="col-sm-8">
            <input type="text" name="username" class="form-control" id="username" placeholder="用户名">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-3 control-label">密码</label>
        <div class="col-sm-8">
            <input type="password" name="password" class="form-control" id="Password" placeholder="密码">
        </div>
    </div>
    <div class="text text-center">
        <button type="submit" class="btn btn-primary">登陆</button>
        <button type="reset" class="btn btn-default">重置</button>
    </div>
</div>
</form>
<!-- 登陆表单结束 -->
<jsp:include page="comm/footer.jsp" flush="true"/>