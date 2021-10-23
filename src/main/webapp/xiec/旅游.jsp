<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>旅游</title>
    <%@include file="alike/headsp.jsp"%>
    <style>
        tr{
            border: 2px solid silver;
        }
        table{
            margin-left: 25px;
        }
        img{
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: 20px;
            margin-right: 20px;
        }
        .span_2{
        color:red;
        font-size: 30px;
        }
        .jg{
            color: rgb(110, 161, 34);
            font-size: 30px;
            margin-left: 10px;
            margin-top: 10px;
            border-bottom: #5192e6 solid 2px;
        }
        
    </style>
</head>
<body>
    <header class="container-fluid ">
        <div class="row header_1">
            <div class=" div_2 "> 
                <img src="../img/imageRegist/logo.png"  width="200px" height="40px" class="img-responsive">
            </div>
       </div>
        <%@include file="alike/tag.jsp"%>
       <!--轮播图-->
       <div class="row">
           <div class="col-md-4">
               <img src="../img/旅游/top1.png" alt="">
           </div>
           <div class="col-md-8">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>
                
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                    <img src="../img/机票/top1.png" >
                    <div class="carousel-caption">
                    </div>
                    </div>
                    <div class="item">
                    <img src="../img/机票/top2.png" >
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
        </div>
    </header>
    <!--主体-->
    <div class="container">
        <div class="row jg">
            <span>跟团游</span>
        </div>
            <div class="row ">
                <c:forEach items="${requestScope.tourList}" var="tour">
                    <div class="col-md-3">
                        <div class="thumbnail">
                            <img src="${tour.img_path}" alt="">
                            <p>${tour.name}(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                            <p><span>&yen;</span><span class="span_2">${tour.price}</span><a href="${pageContext.request.contextPath}/tour/purchase?id=${tour.id}" class="btn buttom" role="button">购买</a></p>
                        </div>
                    </div>
                </c:forEach>

            </div>


        <div class="row jg">
            <span>周末游</span>
        </div>
            <div class="row ">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟3.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟2.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟5.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟1.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟4.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟5.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟1.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟2.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
            </div>

        <div class="row jg">
            <span>自由行</span>
        </div>
            <div class="row ">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟5.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟4.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟3.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟1.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟2.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟1.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟5.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumbnail">
                        <img src="../img/旅游/跟4.png" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <p><span>&yen;</span><span class="span_2">250</span><a href="#" class="btn buttom" role="button">购买</a></p>
                    </div>
                </div>
            </div>

        <hr class="xia">
              <div >
                <img src="../img/购物/页脚1.png" alt="" height="210px">
              </div>
    </div>
    
            
    <footer class="container-fluid">
        <div class="row company">
            版权所有Copyright 1970-2021, All Rights Reserved  &brvbar; 中南民族大学
           </div>
    </footer>
</body>
</html>