<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <style>
        *{
            border: white;
        }
        label{
            margin-left: 10px;
            color: #6b6868;
        }
        .div_2{
            background: url(../img/rg.png);
        }

        .div_one{
            background-color:#5192e6;
        }
        #form_one{
            padding: 80px;
            font-family: "宋体";
            font-size: 20px;
            margin-right: 100px;
        }
        #div_1{
            float: left;
            font-size: 80px;
            padding-top: 150px;
            padding-right:200px;
            padding-left:200px;
            color: #5192e6;
            font-family: "宋体";
        }
        .pa_right p a{
            float: right;
            color: #5192e6;
            font-size: 20px;
            margin-right: 20px;
            margin-top: 10px;
        }
        #username,#password,#email,#name,#tell,#birthday,#scord{
		        width: 251px;
		        height: 30px;
		        border: 1px solid #A6A6A6 ;
		        /*设置边框圆角*/
		        border-radius: 5px;
                margin-top: 15px;
		    }
        #username,#password,#email,#name,#tell,#birthday{
            margin-left: 30px;
        }
        #img{
            height: 32px;
		     vertical-align: middle;
        }
        #table_1{
            border: #f1ecec 3px solid;
            background-color: white;
            border-radius: 5px;
        }
        #buttom{
            font-size: 30px;
            font-family: "宋体";
            width: 460px;
            height: 50px;
            color: white;
            border: white;
            background: orange;
            margin-top: 15px;
            margin-bottom: 5px;
        }
        .td_sex{
            color: #746a6a;
        }
        .error{
            color: #7ee7d3;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script>

        window.onload = function(){
            //1.给表单绑定onsubmit事件
            document.getElementById("form_one").onsubmit = function(){
                //调用用户校验方法   chekUsername();
                //调用密码校验方法   chekPassword();
                return checkUsername() && checkPassword()&&checkTell();
            }

            //给用户名和密码框分别绑定离焦事件
            document.getElementById("username").onblur = checkUsername;
            document.getElementById("password").onblur = checkPassword;
            document.getElementById("tell").onblur=checkTell;
        }

        //校验用户名
        function checkUsername(){
            //1.获取用户名的值
            var username = document.getElementById("username").value;
            //2.定义正则表达式
            var reg_username = /^\w{6,12}$/;
            //3.判断值是否符合正则的规则
            var flag = reg_username.test(username);
            //4.提示信息
            var s_username = document.getElementById("s_username");

            if(flag){
                var username = $(this).val();
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/exist" , // 请求路径
                    type:"POST" , //请求方式
                    data:{username:username},
                    success:function (data) {
                        var span = $("#s_username");
                        if(data.userExsit){
                            span.html(data.msg);
                        }else {
                            // span.css("color","green");
                            // span.html(data.msg)
                            //提示绿色对勾
                            s_username.innerHTML = "<img width='35px' height='25px' src='../img/dui.jpg'/>";
                        }
                    },//响应成功后的回调函数
                    error:function () {
                        alert("出错啦...")
                    },//表示如果请求响应出现错误，会执行的回调函数
                    dataType:"json"//设置接受到的响应数据的格式
                });
            }else{
                //提示红色用户名有误
                s_username.innerHTML = "用户名格式有误";
            }
            return flag;
        }

        //校验密码
        function checkPassword(){
            //1.获取用户名的值
            var password = document.getElementById("password").value;
            //2.定义正则表达式
            var reg_password = /^\w{6,12}$/;
            //3.判断值是否符合正则的规则
            var flag = reg_password.test(password);
            //4.提示信息
            var s_password = document.getElementById("s_password");

            if(flag){
                //提示绿色对勾
                s_password.innerHTML = "<img width='35' height='25' src='../img/dui.jpg'/>";
            }else{
                //提示红色用户名有误
                s_password.innerHTML = "密码格式有误";
            }
            return flag;
        }
        function checkTell(){
            //1.获取用户名的值
            var tell = document.getElementById("tell").value;
            //2.定义正则表达式
            var reg_tell = /^\w{11}$/;
            //3.判断值是否符合正则的规则
            var flag = reg_tell.test(tell);
            //4.提示信息
            var s_tell = document.getElementById("s_tell");

            if(flag){
                //提示绿色对勾
                s_tell.innerHTML = "<img width='35' height='25' src='../img/dui.jpg'/>";
            }else{
                //提示红色用户名有误
                s_tell.innerHTML = "电话格式有误";
            }
            return flag;
        }
    </script>
</head>
<body class="div_one">
    <div>
        <span><img src="../img/imageRegist/logo.png" alt=""></span>
    </div>
    <div  class="div_2">
        <div id="div_1">
            <p>欢迎注册</p>
        </div>
        <div class="pa_right">
            <p><a href="main.jsp" >首页</a></p>
            <p><a href="登录.jsp" >登录</a></p>
        </div>
        <div>
            <form action="${pageContext.request.contextPath}/user/regist" id="form_one" method="post">
                <table border="1" id="table_1" cellspacing="0">
                    <tr>
                        <td><label for="username">用户名:</label></td>
                        <td><input type="text" placeholder="请输入账号" name="username" id="username">
                           <span id="s_username" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="password">密码:</label></td>
                        <td><input type="password" placeholder="请输入密码" name="password" id="password">
                            <span id="s_password" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input type="email" placeholder="请输入Email" name="email" id="email"></td>
                    </tr>
                    <tr>
                        <td><label for="name">姓名:</label></td>
                        <td><input type="text" placeholder="请输入姓名" name="name" id="name"></td>
                    </tr>
                    <tr>
                        <td><label for="tell">手机号:</label></td>
                        <td><input type="text" placeholder="请输入手机号" name="tell" id="tell">
                            <span id="s_tell" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td><label >性别:</label></td>
                        <td class="td_sex"><input type="radio" name="sex" value="male">男
                        <input type="radio" name="sex" value="female">女
                        </td>
                    </tr>
                    <tr>
                        <td><label for="birthday">出生日期:</label></td>
                        <td><input type="date" name="birthday" id="birthday"></td>
                    </tr>
                    <tr>
                        <td><label for="scord">验证码:</label></td>
                        <td><input type="text" id="scord" name="scord"><img src="../img/imageRegist/verify_code.jpg" alt="" id="img" ></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="注册" id="buttom"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>