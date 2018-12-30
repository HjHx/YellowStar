<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="comm/header.jsp" />

<!-- 导航部分 -->
<nav class="navbar navbar-default" role="navigation">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Yellow Star</a>
  </div>

  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li class="active">
        <a href="index.jsp">主页</a>
      </li>
      <li>
        <a href="index.jsp">关于黄鑫</a>
      </li>
    </ul>

    <ul class="nav navbar-nav navbar-right">
      <li>
        <a href="login.jsp">当前身份：游客</a>
      </li>
      <li>
        <a href="login.jsp">点击登陆</a>
      </li>
    </ul>
  </div>

</nav>
<!-- 导航部分结束 -->

<div class="jumbotron">
  <h1>Yellow Star <small>物业管理系统</small></h1>
  <p>Yellow Star 物业管理系统 ，Yellow Star 很强大，Yellow Star 只负责吊，其他不管，用了不后悔，用了还想用，功能很强大，牛逼吹上天，性能顶呱呱！</p>
  <p>
    <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">了解一下 &raquo;</a>
  </p>
</div>

<jsp:include page="comm/footer.jsp" />