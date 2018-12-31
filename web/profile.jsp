<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String)session.getAttribute("username");
    int uid = (int) session.getAttribute("uid");
    int type = (int)session.getAttribute("type");
    String crate_time = (String)session.getAttribute("create_time");
%>
<jsp:include page="comm/header.jsp" />
<%
    switch (type){
        case 1:
            // 超级管理员

%>
<jsp:include page="comm/root_nav.jsp" />
<%
            break;
        case 2:
            // 物业
%>
<jsp:include page="comm/property_nav.jsp" />
<%
            break;
        case 3:
            // 业主
%>
<jsp:include page="comm/owner_nav.jsp" />
<%
            break;
        default:
            response.sendRedirect("index.jsp");
    }
%>
<jsp:include page="comm/nav_end.jsp" />
    <h1>欢迎用户：<%=name%></h1>
<jsp:include page="comm/footer.jsp" />