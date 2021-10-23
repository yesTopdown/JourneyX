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
                    <th class="thumbnail col-md-6" >描述</th>
                    <th class="thumbnail col-md-6" >订单号</th>
                </tr>
                <c:forEach items="${sessionScope.Oder.list}" var="com">
                    <tr class="row">
                        <td class="thumbnail col-md-6">${com.name}&nbsp;&rarr;&nbsp;${com.toPrice}</td>
                        <td class="thumbnail col-md-6" >${com.orderBer}</td>
                    </tr>
                </c:forEach>
            </table>
    </div>
</div>
<script>


</script>
</body>
</html>