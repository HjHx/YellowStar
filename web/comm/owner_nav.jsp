<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = "";
    name = (String)session.getAttribute("username");
%>
<!-- 导航部分 -->
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">Yellow Star</a>
    </div>


    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active">
                <a href="#">主页</a>
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
