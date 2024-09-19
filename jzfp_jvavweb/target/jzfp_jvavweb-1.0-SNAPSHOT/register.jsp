<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/9/9
  Time: 上午9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>永寿注册</title>
        <link rel="icon" href="./img/img.png">
        <link rel="stylesheet" href="css/register.css">
    </head>
    <body>
        <header>
            <div class="header_cont clearfix">
                <img src="./img/logo.png" alt="">
                <p>免费注册</p>
            </div>
        </header>

        <div class="cont_wrap">
            <div class="cont">
                <form action="register" method="post"  method="post" id="form_one">
                    <div class="box">
                        <h3>注册账号</h3>
                        <div class="top">
                            <p class="username clearfix">
                                <label for="first"></label>
                                <input type="text" placeholder="请输入用户名" name="userName" id="first" oninput="this.value=this.value.replace(/[^a-zA-Z0-9]/g,'')">
                            </p>
                            <p class="password clearfix">
                                <label for="pass"></label>
                                <input type="password" placeholder="请输入密码" name="userPassword" id="pass" minlength="6">
                            </p>
                            <p class="code clearfix">
                                <label for="pass2"></label>
                                <input type="password" placeholder="请确认密码" name="userPassword2" id="pass2">
                            </p>
                            <input type="submit" value="提交" id="submit">
                            <div>
                                <p>已有账号，<a href="./login.jsp">直接登录></a></p>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <footer>
            <p>版权所有</p>
            <p>wowonwall</p>
        </footer>
        <script type="text/javascript" src="js/register.js"></script>
    </body>

</html>
