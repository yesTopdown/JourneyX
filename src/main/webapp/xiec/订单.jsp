<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>订单</title>
    <%@include file="alike/headsp.jsp"%>
    <style>
        .blg{
            background-color: #5192e6;
            height: 600px;
            padding-top: 100px;
            padding-left: 250pt;
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
            width: 100px;
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
                        <th class="thumbnail col-md-6">描述</th>
                        <th class="thumbnail col-md-6">价钱</th>
                    </tr>
                    <tr class="row">
                        <td class="thumbnail col-md-6">${requestScope.name}</td>
                        <td class="thumbnail col-md-6">${requestScope.price}</td>
                    </tr>
                    <tr class="row">
                        <td class="thumbnail col-md-6"><span>付款额</span></td>
                        <td class="thumbnail col-md-6"><input type="text" name="jiage" placeholder="价格" value="${requestScope.price}" disabled></td>
                    </tr>
                    <tr class="row ">
                        <td class="thumbnail col-md-6"><a href="" class="btn input_b" role="button">取消</a></td>
                        <td class="thumbnail col-md-6"><a href="${pageContext.request.contextPath}/order/Item?name=${requestScope.name}&price=${requestScope.price}" class="btn input_b" role="button">付款</a></td>
                    </tr>
                </table>
        </div>
    </div>
</body>
</html>