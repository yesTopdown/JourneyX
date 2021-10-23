<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>购物车</title>
    <%@include file="alike/headsp.jsp"%>

    <style>
        .blg{
            background-color: #5192e6;
            height: 600px;
            padding-top: 100px;
            padding-left: 350px;
        }
        .blg_1{
            background-color: white;
            width: 1200px;
        }
        th{
            text-align: center;
            font-size: 20px;
            color: rgb(82, 79, 79);
        }
        td{
            height: 50px;
            text-align: center;
            font-size: 20px;
            color: rgb(82, 79, 79);
        }
        .input_b{
            text-align: center;
            border: orange solid;
            background-color: orange;
            color: white;
            width: 200px;
        }
        .input_a{
            text-align: center;
            border:#5192e6 solid;
            background-color: #5192e6;
            color: white;
        }
    </style>
</head>
<body>
    <div>
        <span><img src="../img/imageRegist/logo.png" alt=""></span><a href="${pageContext.request.contextPath}/xiec/main.jsp" class="a_sy">首页</a>
    </div>
    <div class="blg">
        <div class="blg_1">
                <table class="thumbnail">
                    <tr class="row">
                        <th class="thumbnail col-md-4" >描述</th>
                        <th class="thumbnail col-md-4" >价钱</th>
                        <th class="thumbnail col-md-4"></th>
                    </tr>
                    <c:forEach items="${sessionScope.cart.items}" var="com">
                    <tr class="row">
                        <td class="thumbnail col-md-4">${com.value.name}&nbsp;&rarr;&nbsp;${com.value.count}</td>
                        <td class="thumbnail col-md-4" >${com.value.totalPrice}</td>
                        <td class="thumbnail col-md-4"><a href="${pageContext.request.contextPath}/Cart/delete?id=${com.value.id}" class="btn input_a" role="button">删除</a></td>
                    </tr>
                    </c:forEach>
                    <tr class="row">
                        <td class="thumbnail col-md-6"><span>总价</span></td>
                        <td class="thumbnail col-md-6"><input type="text" name="jiage" placeholder="价格" disabled value="${sessionScope.cart.totalPrice}"></td>
                    </tr>
                    <tr class="row ">
                        <td class="col-md-6"><a href="${pageContext.request.contextPath}/Cart/clear" class="btn input_b clear_a" role="button">清空购物车</a></td>
                        <td class="thumbnail col-md-6"><a href="${pageContext.request.contextPath}/order/Item?name=number&price=${sessionScope.cart.totalPrice}" class="btn input_b" role="button">付款</a></td>
                    </tr>
                </table>
        </div>
    </div>    
    <script>
        $(function (){
            $("a.input_a").click(function (){
                return confirm("你确定要删除此商品吗?");
            });
        });
        $(function (){
            $("a.clear_a").click(function (){
                return confirm("你确定要清空购物车吗?");
            });
        });
        
    </script>
</body>
</html>