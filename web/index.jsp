<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="comm/header.jsp" flush="true" />
<jsp:include page="comm/nav.jsp" flush="true" />
      <div class="jumbotron">
        <h1>Yellow Star <small>物业管理系统</small></h1>
        <p>Yellow Star 物业管理系统 ，Yellow Star 很强大，Yellow Star 只负责吊，其他不管，用了不后悔，用了还想用，功能很强大，牛逼吹上天，性能顶呱呱！</p>
        <p>
          <a class="btn btn-lg btn-primary" href="#" role="button">了解一下 &raquo;</a>
        </p>
      </div>
<jsp:include page="comm/footer.jsp" flush="true" />