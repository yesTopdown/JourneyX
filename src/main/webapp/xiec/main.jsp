<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
   <%@include file="alike/headsp.jsp"%>

    <style>
        .font_1{
            font-size: 20px;
            font-family: "宋体";
            color: gray;
            float: right;
        }


        .table_1{
            margin-top: 20px;
            border: rgb(241, 227, 227) solid;
        }

        span{
            font-family: "宋体";
            margin-left: 20px;
        }
        .span_1{
            margin-left: 20px;
            font-size: 20px;
        }
        .span_2{
            color:red;
            font-size: 30px;
        }

    </style>
    <script>
        function funlv(){
            location.href="${pageContext.request.contextPath}/tour/listTour";
        }
        function funjd(){
            location.href="${pageContext.request.contextPath}/Hotel/listHotel";
        }
        function funjt(){
            location.href="${pageContext.request.contextPath}/Air/list?action=plane";
        }
        function fungw(){
            location.href="${pageContext.request.contextPath}/shop/list";
        }
    </script>
</head>
<body>
<header class="container-fluid ">
    <div class="row header_1">
        <div class="col-md-4 div_2 ">
            <img src="../img/imageRegist/logo.png"  width="200px" height="40px" class="img-responsive">
        </div>
        <div class="col-md-5 div_6">
            <input type="text" name="search" id="search" placeholder="搜索">
            <input type="button" name="ensure" id="ensure" value="搜索">
        </div>
        <div class="col-md-3 div_4">
            <c:if test="${empty sessionScope.User}">
            <span><a href="登录.jsp" >登录</a></span>
            <span><a href="旅游注册页面.jsp">注册</a></span>
            </c:if>
            <c:if test="${not empty sessionScope.User}">
                <p>欢迎会员${sessionScope.User.username}光临携程&nbsp;&nbsp;<a href="我的订单.jsp">我的订单</a></p>
            </c:if>
        </div>
    </div>
   <%@include file="alike/tag.jsp"%>
    <!--轮播图-->
    <div class="row">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                    <div class="item active" >
                        <img src="../img/mai1.png ">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="../img/main1.png" >
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="../img/main3.png" >
                        <div class="carousel-caption">
                        </div>
                    </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</header>
<!--主体-->
<div class="container">
    <div class="row jx">
        <img src="../img/imageRegist/icon_6.jpg" alt="">
        <span>精选</span>
    </div>
    <div>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">热门</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" >
                <!--热门图片-->
                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <!--第一组-->
                            <div class="col-md-3">
                                <div>
                                    <img src="../img/热门/重庆.png" alt="..." class="img-thumbnail" onclick="funlv();">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <img src="../img/热门/北京.png" alt="..." class="img-thumbnail" onclick="funlv();">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <img src="../img/热门/三亚.png" alt="..." class="img-thumbnail" onclick="funlv();">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div>
                                    <img src="../img/热门/东京.png" alt="..." class="img-thumbnail" onclick="funlv();">
                                </div>
                            </div>
                        </div>

                        <!--第二组-->
                        <div class="row">
                            <div class="col-md-3">
                                <img src="../img/热门/泰国曼谷.png" alt="..." class="img-thumbnail" onclick="funlv();">
                            </div>
                            <div class="col-md-3">
                                <img src="../img/热门/曼谷.png" alt="..." class="img-thumbnail" onclick="funlv();">
                            </div>
                            <div class="col-md-3">
                                <img src="../img/热门/瑞士.png" alt="..." class="img-thumbnail" onclick="funlv();">
                            </div>
                            <div class="col-md-3">
                                <img src="../img/热门/阿拉维斯.png" alt="..." class="img-thumbnail" onclick="funlv();">
                            </div>
                        </div>
                        <!--第三组-->
                        <div class="row">
                            <div class="col-md-3">
                                <img src="../img/热门/新西兰.png" alt="..." class="img-thumbnail" onclick="funlv();">
                            </div>
                            <div class="col-md-3">
                                <img src="../img/热门/越南.png" alt="..." class="img-thumbnail" onclick="funlv();">
                            </div>
                            <div class="col-md-3">
                                <img src="../img/热门/成都.png" alt="..." class="img-thumbnail" onclick="funlv();">
                            </div>
                            <div class="col-md-3">
                                <img src="../img/热门/巴厘岛.png" alt="..." class="img-thumbnail" onclick="funlv();">
                            </div>
                        </div>

                        <div class="row">
                            <hr class="xia"></hr>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <img src="../img/热门/会员日.png" class="img-thumbnail">
                    </div>
                </div><!--热门结束-->

            </div>
        </div>
    </div>
    <div class="row jx">
        <img src="../img/imageRegist/icon_6.jpg" alt="">
        <span>住宿</span>
    </div>
    <p></p>
    <!--酒店-->
    <div class="row">
        <span class="jx">国内酒店</span>
    </div>
    <div>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">北京</a></li>
            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">上海</a></li>
            <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">深圳</a></li>
            <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">成都</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="">
                <div class="row">
                    <div class="col-md-3">
                        <img src="../img/住宿/上海.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/北京1.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/北京2.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/北京3.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>

                </div>
            </div>

            <div role="tabpanel" class="tab-pane" id="profile">
                <div class="row">
                    <div class="col-md-3">
                        <img src="../img/住宿/上海1.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/上海2.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/上海3.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/上海4.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                </div>
            </div>

            <div role="tabpanel" class="tab-pane" id="messages">
                <div class="row">
                    <div class="col-md-3">
                        <img src="../img/住宿/深圳1.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/深圳2.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/深圳3.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/深圳4.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                </div>
            </div>

            <div role="tabpanel" class="tab-pane" id="settings">
                <div class="row">
                    <div class="col-md-3">
                        <img src="../img/住宿/成都1.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/成都2.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/成都3.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/成都4.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                </div>
            </div>

        </div>
    </div>
    <p></p>
    <br>
    <div class="row jx">
        <span>国外酒店</span>
    </div>
    <div>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">热门海外城市</a></li>

        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="home">
                <div class="row">
                    <div class="col-md-3">
                        <img src="../img/住宿/东京.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/吉普岛.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/新加坡.png" alt=""class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/曼谷.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <img src="../img/住宿/墨尔本.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/吉隆坡.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/清迈.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                    <div class="col-md-3">
                        <img src="../img/住宿/胡志明市.png" alt="" class="img-thumbnail" onclick="funjd();">
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!--酒店结束-->
    <!--分割线-->
    <div class="row jx">
        <img src="../img/imageRegist/icon_6.jpg" alt="">
        <span>交通</span>
    </div>
    <div class="row">
            <table class="table_1">
                <tr class="row">
                    <td class="thumbnail col-md-3">
                        <p><span class="span_1"><span>上海</span>——><span>北京</span></span></p>
                        <p><span>&yen;</span><span class="span_2">250</span></p><input type="button" value="购买" class="buttom" onclick="funjt();">
                    </td>
                    <td class="thumbnail col-md-3">
                        <p><span class="span_1"><span>上海</span>——><span>北京</span></span></p>
                        <p><span>&yen;</span><span class="span_2">250</span></p><input type="button" value="购买" class="buttom">
                    </td>
                    <td class="thumbnail col-md-3">
                        <p><span class="span_1"><span>上海</span>——><span>北京</span></span></p>
                        <p><span>&yen;</span><span class="span_2">250</span></p><input type="button" value="购买" class="buttom">
                    </td>
                    <td class="thumbnail col-md-3">
                        <p><span class="span_1"><span>上海</span>——><span>北京</span></span></p>
                        <p><span>&yen;</span><span class="span_2">250</span></p><input type="button" value="购买" class="buttom">
                    </td>
                </tr>
                <tr class="row">
                    <td class="thumbnail col-md-3">
                        <p><span class="span_1"><span>上海</span>——><span>北京</span></span></p>
                        <p><span>&yen;</span><span class="span_2">250</span></p><input type="button" value="购买" class="buttom">
                    </td>
                    <td class="thumbnail col-md-3">
                        <p><span class="span_1"><span>上海</span>——><span>北京</span></span></p>
                        <p><span>&yen;</span><span class="span_2">250</span></p><input type="button" value="购买" class="buttom">
                    </td>
                    <td class="thumbnail col-md-3">
                        <p><span class="span_1"><span>上海</span>——><span>北京</span></span></p>
                        <p><span>&yen;</span><span class="span_2">250</span></p><input type="button" value="购买" class="buttom">
                    </td>
                    <td class="thumbnail col-md-3">
                        <p><span id="span_1"><span>上海</span>——><span>北京</span></span></p>
                        <p><span>&yen;</span><span class="span_2">250</span></p><input type="button" value="购买" class="buttom">
                    </td>
                </tr>
            </table>
    </div>
    <div class="row jx">
        <img src="../img/imageRegist/icon_6.jpg" alt="">
        <span>购物</span>
    </div>
    <p></p>
    <div class="row">
        <div class="row">
            <div class="col-md-3">
                <img src="../img/购物/物1.png" alt=""  class="img-thumbnail" onclick="fungw();">
            </div>
            <div class="col-md-3">
                <img src="../img/购物/物2.png" alt=""  class="img-thumbnail" onclick="fungw();">
            </div>
            <div class="col-md-3">
                <img src="../img/购物/物3.png" alt=""  class="img-thumbnail" onclick="fungw();">
            </div>
            <div class="col-md-3">
                <img src="../img/购物/物4.png" alt=""  class="img-thumbnail" onclick="fungw();">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <img src="../img/购物/物5.png" alt=""  class="img-thumbnail" onclick="fungw();">
            </div>
            <div class="col-md-3">
                <img src="../img/购物/物6.png" alt=""  class="img-thumbnail" onclick="fungw();">
            </div>
            <div class="col-md-3">
                <img src="../img/购物/物7.png" alt=""  class="img-thumbnail" onclick="fungw();">
            </div>
            <div class="col-md-3">
                <img src="../img/购物/物8.png" alt=""  class="img-thumbnail" onclick="fungw();">
            </div>
        </div>
    </div>
    <hr class="xia">
    <div >
        <img src="../img/购物/页脚1.png" alt="" height="210px">
    </div>
</div><!--主体结束-->
<%@include file="alike/footer.jsp"%>
</body>
</html>
