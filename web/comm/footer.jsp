<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
            <!-- 底部版权 -->
            <div class="copyright">
                <div class="container">
                    <div class="page-header">
                        <p></p>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <span>Copyright &copy; 2019</span> |
                            <span>Yellow Star 物业管理系统</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 底部版权结束 -->
        </div>
    </div>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="<%=basePath%>js/jquery-3.3.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="<%=basePath%>bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>