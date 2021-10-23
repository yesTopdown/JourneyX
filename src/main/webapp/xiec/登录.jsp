<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <style>
        #div_one {
            background: #5192e6;
            height: 800px;
        }

        #div_1 {
            float: left;
            font-size: 80px;
            padding-right: 200px;
            padding-left: 700px;
            color: white;
            font-family: "宋体";
        }

        #div_2 span a {
            float: right;
            font-family: "宋体";
            font-size: 20px;
            color: white;
            margin-right: 20px;
            margin-top: 10px;
        }


        .div_4 {
            padding-top: 180px;
        }

        #password, #username {
            width: 251px;
            height: 32px;
            border: 1px solid #A6A6A6;
            /*设置边框圆角*/
            border-radius: 5px;
        }

        #submit {
            font-family: "宋体";
            font-size: 20px;
            color: aliceblue;
            border: orange 1px solid;
            background-color: orange;
            width: 200px;
        }

        #login-bg {
            width: 1289px;
            margin: 0 auto;
            height: 450px;
            background: url(../img/r-bg.jpg) 0 0 no-repeat;
        }

        #login-m {
            padding-top: 150px;
            padding-left: 750px;
            height: 160px;
        }

        #login-m ul li {
            color: #676767;
            font-size: 14px;
            height: 50px;
            margin-left: 50px;
        }
    </style>
</head>
<body >
<div>
    <span><img src="../img/imageRegist/logo.png" alt=""></span>
</div>
<div id="div_one">
    <div id="div_1">
        <p>欢迎登录</p>
    </div>
    <div id="div_2">
            <span>
                <a href="${pageContext.request.contextPath}/xiec/main.jsp">首页</a>
                <a href="${pageContext.request.contextPath}/xiec/旅游注册页面.jsp">注册</a>
            </span>
    </div>
    <div>
        <div class="div_4">
            <form action="${pageContext.request.contextPath}/user/login" method="post">
                <div id="login-bg">
                    <div id="login-m">
                        <ul>
                           <li><%=request.getAttribute("msg")==null?"请输入用户名和密码":request.getAttribute("msg")%>
                            <c:if test="${not empty requestScope.login_msg}">
                                <span>${requestScope.login_msg}</span>
                            </c:if>
                           </li>
                            <li>登录名
                                <input name="username" type="text" class="box" id="username" size="33" maxlength="12"
                                       placeholder="请输入6~12位账号">
                            </li>
                            <li>密&nbsp;&nbsp;&nbsp;码
                                <input name="password" type="password" class="box" size="33" id="password"
                                       maxlength="16">
                            </li>
                            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input name="checkbox" type="checkbox" id="checkbox" checked="checked"/> 30天内自动登录
                            </li>
                            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="submit" name="submit" id="submit">
                            </li>
                        </ul>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>