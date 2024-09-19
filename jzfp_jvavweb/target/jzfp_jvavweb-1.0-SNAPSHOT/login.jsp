<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/9/9
  Time: 上午9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>

        <form method="post" action="login" class="box">
            <h1>Login</h1>
            <br>
            <hr>
            <label>
                <input type="text" name="username" placeholder="Username" oninput="this.value=this.value.replace(/[^a-zA-Z0-9]/g,'')">
            </label>
            <label>
                <input type="password" name="password" placeholder="Password" minlength="6" onblur="checkPassword(this)">
            </label>
            <input type="submit" name="" value="Login">
            <p>Forget password ?</p>
        </form>

        <script>
            function checkPassword(input) {
                if (input.value.length < 6) {
                    //alert('密码必须至少为6位');
                    input.setCustomValidity('密码必须至少为6位');
                } else {
                    input.setCustomValidity('');
                }
            }
        </script>

    </body>
</html>