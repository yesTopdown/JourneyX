<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>机票</title>
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
         <div>
         </div>
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
    </header>
    <!--主体-->
    <div class="container">
        <div>
            <p class="jh">
                机票
            </p>
        </div>

        <div class="row">
            <c:forEach items="${requestScope.andListJt}" var="list">
            <div class="col-md-4">
                <table>
                    <c:forEach items="${list}" var="air">
                    <tr>
                        <td>
                            <img src="${air.img_path}" alt="">
                        </td>
                        <td><span>${air.begin}</span>&rarr;<span>${air.end}</span>
                            <p><span>&yen;</span><span class="span_2">${air.price}</span></p>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/Air/purchase?id=${air.id}" class="btn buttom" role="button">购买</a>
                        </td>
                    </tr>
                    </c:forEach>

                </table>
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