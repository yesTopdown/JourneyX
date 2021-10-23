<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>支付成功</title>
    <style>
        .div_2{
            text-align: center;
            font-family: "宋体";
            color: #c0e713;
            font-size: 50px;
            background-color: white;
            width: 1000px;
        }
        a{
            font-family: "宋体";
            color: #c0e713;
            font-size: 50px; 
        }
        .div_1{
            background-color: #5192e6;
            height: 400px;
            padding-top: 200px;
            padding-left: 400px;
        }
    </style>
</head>
<body>
    <div>
        <span><img src="../img/imageRegist/logo.png" alt=""></span>
    </div>
    <div class="div_1">
        <div class="div_2">
            <font>订单号：</font>
            <span>${requestScope.ding}</span>
            <a href="${pageContext.request.contextPath}/xiec/main.jsp">首页</a>
        </div>
    </div>
</body>
</html>