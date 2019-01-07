<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int user_type;
    user_type = (int)session.getAttribute("user_type");
    if(user_type != 1)
    {
        response.sendRedirect("index.jsp");
    }else
%>
<jsp:include page="comm/header.jsp" flush="true"  />
<jsp:include page="comm/nav.jsp" flush="true" />
<div class="panel panel-info">
    <div class="panel-heading text-center">添加房产信息</div>
    <div class="panel-body">
        <form action="doaddhouse" class="form-horizontal" method="POST">
            <div class="form-group col-sm-12">
                <label class="col-sm-2 control-label">房产持有人:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="username" placeholder="房产持有人">
                </div>
            </div>
            <br>

            <div class="input-group col-sm-12">
                <label class="col-sm-2 control-label">房型:</label>
                <div class="col-sm-9">
                    <select name="house_type" class="form-control" >
                        <option value="一室一厅">一室一厅</option>
                        <option value="二室一厅二卫">二室一厅二卫</option>
                        <option value="二室二厅二卫">二室二厅二卫</option>
                        <option value="三室一厅">三室一厅</option>
                        <option value="三室二厅二卫">三室二厅二卫</option>
                    </select>
                </div>
            </div>
            <br>

            <div class="col-sm-12">
                <label class="col-sm-2 control-label">住房面积:</label>
                <div class="input-group col-sm-9">
                    <input type="text" class="form-control" name="area" placeholder="住房面积">
                    <span class="input-group-addon" id="basic-addon2">平方米</span>
                </div>
            </div>
            <br><br><br>

            <div class="form-group col-sm-12">
                <label class="col-sm-2 control-label">购房时间:</label>
                <div class="col-sm-9">
                    <input type="date" class="form-control" name="buy_date">
                </div>
            </div>
            <br>

            <div class="input-group col-sm-12">
                <label class="col-sm-2 control-label">楼号:</label>
                <div class="col-sm-9">
                    <select name="building_no" class="form-control" >
                        <option value="1号楼">1号楼</option>
                        <option value="2号楼">2号楼</option>
                        <option value="3号楼">3号楼</option>
                        <option value="4号楼">4号楼</option>
                        <option value="5号楼">5号楼</option>
                        <option value="6号楼">6号楼</option>
                        <option value="7号楼">7号楼</option>
                        <option value="8号楼">8号楼</option>
                        <option value="9号楼">9号楼</option>
                        <option value="10号楼">10号楼</option>
                        <option value="11号楼">11号楼</option>
                        <option value="12号楼">12号楼</option>
                        <option value="13号楼">13号楼</option>
                    </select>
                </div>
            </div>
            <br>

            <div class="input-group col-sm-12">
                <label class="col-sm-2 control-label">小区单元:</label>
                <div class="col-sm-9">
                    <select name="unit" class="form-control" >
                        <option value="一单元">一单元</option>
                        <option value="二单元">二单元</option>
                        <option value="三单元">三单元</option>
                    </select>
                </div>
            </div>
            <br>

            <div class="form-group col-sm-12">
                <label class="col-sm-2 control-label">门牌号:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="card_id" placeholder="门牌号">
                </div>
            </div>
            <br>

            <div class="form-group col-sm-12">
                <label class="col-sm-2 control-label">联系电话:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="phone" placeholder="联系电话">
                </div>
            </div>
            <br>

            <div class="form-group col-sm-12">
                <label class="col-sm-2 control-label">停车区域编号:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" name="car_id" placeholder="停车区域编号">
                </div>
            </div>
            <br>

            <br>
            <div class="text-center">
                <button type="submit" class="btn btn-info">立即添加</button>
            </div>
        </form>
    </div>
</div>
<jsp:include page="comm/footer.jsp" flush="true" />