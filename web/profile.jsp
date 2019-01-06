<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String)session.getAttribute("username");
%>
<jsp:include page="comm/header.jsp" />
<jsp:include page="comm/nav.jsp" />
    <h1>欢迎用户：${username}</h1>
    <p>这是账户登陆后的个人主页，不同用户对应不同的信息</p>
<jsp:include page="comm/footer.jsp" />