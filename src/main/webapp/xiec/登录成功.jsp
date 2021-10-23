<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录成功</title>
    <style>
        font{
            font-family: "宋体";
            color: #c0e713;
            font-size: 50px;
        }
        .div_2{
            background: #5192e6;
            height: 300px;
            padding-top: 180px;
            padding-left: 600px;
        }
        a{
            font-family: "宋体";
            color: #c0e713;
            font-size: 50px; 
        }
    </style>
</head>
<body>
    <div>
        <span><img src="../img/imageRegist/logo.png" alt=""></span>
    </div>
    <div class="div_2">
        <font>登录成功</font>
        <a href="${pageContext.request.contextPath}/xiec/main.jsp">首页</a>
    </div>
</body>
</html>