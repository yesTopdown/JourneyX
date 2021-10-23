<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>购物</title>
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
            color: rgb(223, 191, 53);
            font-size: 30px;
            margin-left: 10px;
            margin-top: 10px;
            border-bottom: #5192e6 solid 2px;
        }
        p{
            color: gray;
            text-align: center;
            font-size: 20px;
        }
        .a_sc{
            color: gray;
            font-family: "宋体";
            font-size: 20px;
            float: right;
            border: #5192e6 solid 2px;
        }
        .th_one{
            margin-top: 30px;
        }
        
    </style>
</head>
<body>

    <header class="container-fluid ">
        <div class="row div_2">
            <img src="../img/imageRegist/logo.png"  width="200px" height="40px" class="img-responsive">
        </div>
        <%@include file="alike/tag.jsp"%>
 
    </header>
    <!--主体-->
    <div class="container">
        <div class="row">
            <a href="${pageContext.request.contextPath}/xiec/购物车.jsp" class="a_sc"> 购物车</a>
        </div>
              <!--轮播图-->
       <div class="row">
        <div>
             <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
             <!-- Indicators -->
             <ol class="carousel-indicators">
                 <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                 <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                 <li data-target="#carousel-example-generic" data-slide-to="2"></li>
             </ol>
             
             <!-- Wrapper for slides -->
             <div class="carousel-inner" role="listbox">
                 <div class="item active">
                 <img src="../img/购物/top1.png" >
                 <div class="carousel-caption">
                 </div>
                 </div>
                 <div class="item">
                 <img src="../img/购物/top2.png" >
                 <div class="carousel-caption">
                 </div>
                 </div>
                 <div class="item">
                    <img src="../img/购物/top3.png" >
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
        <div class="row jg">
            <span>国内购</span>
        </div>
            <div class="row ">
                <c:forEach items="${requestScope.shops}" var="shop">
                    <div class="col-md-3" >
                        <div class="thumbnail th_one">
                            <img src=${shop.imgPath} alt="">
                            <p>${shop.name}</p>
                            <p><span>&yen;</span><span class="span_2">${shop.price}</span></p>
                            <p><a href="${pageContext.request.contextPath}/Cart/add?id=${shop.id}" class="btn buttom" role="button">加入购物车</a></p>
                        </div>
                    </div>
                </c:forEach>
            </div>


        <div class="row jg">
            <span>国外购</span>
        </div>
        <div class="row ">
            <c:forEach items="${requestScope.shops}" var="shop">
                <div class="col-md-3" >
                    <div class="thumbnail th_one">
                        <img src=${shop.imgPath} alt="">
                        <p>${shop.name}</p>
                        <p><span>&yen;</span><span class="span_2">${shop.price}</span></p>
                        <p><a href="${pageContext.request.contextPath}/Cart/add?id=${shop.id}" class="btn buttom" role="button">加入购物车</a></p>
                    </div>
                </div>
            </c:forEach>
        </div>

        <hr class="xia">
              <div >
                <img src="../img/购物/页脚1.png" alt="" height="210px">
              </div>
    </div>
    <%@include file="alike/footer.jsp"%>
</body>
</html>