<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/7/11
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row ">
    <nav class="navbar navbar-default div_5">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/xiec/main.jsp" >首页</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li ><a href="${pageContext.request.contextPath}/Air/list?action=plane">机票 <span class="sr-only">(current)</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/Air/list?action=train">火车</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">旅游 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/tour/listTour">旅游main</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${pageContext.request.contextPath}/tour/listTour">周末游</a></li>
                            <li><a href="${pageContext.request.contextPath}/tour/listTour">跟团游</a></li>
                            <li><a href="${pageContext.request.contextPath}/tour/listTour">自由行</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/Hotel/listHotel" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">酒店 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/Hotel/listHotel">国外酒店</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${pageContext.request.contextPath}/Hotel/listHotel">国内酒店</a></li>

                        </ul>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${pageContext.request.contextPath}/shop/list">购物</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/xiec/客服.jsp">客服</a></li>
                            <li><a href="${pageContext.request.contextPath}/xiec/合作.jsp">合作</a></li>
                            <li><a href="${pageContext.request.contextPath}/xiec/什么也没有.jsp">什么也没有</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${pageContext.request.contextPath}/xiec/追星.jsp">追星</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>