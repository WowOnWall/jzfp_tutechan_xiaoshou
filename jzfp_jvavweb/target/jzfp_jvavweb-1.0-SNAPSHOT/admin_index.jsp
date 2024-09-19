<%@ page import="org.example.jzfp_jvavweb.admin" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/9/10
  Time: 上午9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jzfp_jvavweb.admin.Product" %>
<!DOCTYPE html>
<html>
    <head>
        <title>admin</title>
        <link rel="icon" href="./img/img.png">
        <link rel="stylesheet" href="css/admin.css">
    </head>
    <body>
        <div class="container">
            <h1>商品管理</h1>
            <div class="product-item01">
                <form action="admin" method="post">
                    <input type="hidden" name="action" value="insert">
                    <label>名称：<input type="text" name="name"></label><br>
                    <label>价格：<input type="text" name="price"></label><br>
                    <label>图片：<input type="file" name="description" accept="image/gif, image/jpeg, image/png, image/jpg"></label><br>
                    <input type="submit" value="添加">
                </form>
            </div>
            <div class="product-list01">
                <%
                    List<Product> productList = (List<Product>) request.getSession().getAttribute("productList");
                    if (productList != null) {
                        for (Product product : productList) {
                %>
                <div class="product-item">
                    <form action="admin" method="post">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="id" value="<%= product.getId() %>">
                        <input type="hidden" name="description" value="<%= product.getDescription() %>">
                        <img src="<%= product.getDescription() %>" alt="商品图片" height="100" width="50">
                        <input type="text" name="name" value="<%= product.getName() %>">
                        <input type="text" name="price" value="<%= product.getPrice() %>￥">
                        <input type="submit"  value="更新">
                        <a href="admin?action=delete&id=<%= product.getId() %>">删除</a>
                    </form>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
        <script src="./js/admin.js"></script>
    </body>
</html>