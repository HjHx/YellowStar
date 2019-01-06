<%@ page import="entity.UserDaoData" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int user_type;
    user_type = (int)session.getAttribute("user_type");
    if(user_type != 1)
    {
        response.sendRedirect("index.jsp");
    }else
    {
        UserDaoData userDao = new UserDaoData();
        ArrayList<User> users = userDao.getAll();
        String[] type_name = new String[]{"游客","管理员","物业","业主"};
%>
<jsp:include page="comm/header.jsp" flush="true"  />
<jsp:include page="comm/nav.jsp" flush="true" />
<h1 class="text-center" >账户管理</h1>
<div class="table-responsive">
    <table class="table table-hover table-striped">
        <tr>
            <th>用户ID</th>
            <th>用户名</th>
            <th>用户类别</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        <%
            for(int i=0;i<users.size();i++)
            {
                User u = users.get(i);
        %>
        <tr>
            <td><%=u.getUid()%></td>
            <td><%=u.getUsername()%></td>
            <td><%=type_name[u.getUser_type()]%></td>
            <td><%=u.getCrate_time()%></td>
            <td><a href="#">管理此账户</a></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<jsp:include page="comm/footer.jsp" flush="true" />
<%
    }
%>