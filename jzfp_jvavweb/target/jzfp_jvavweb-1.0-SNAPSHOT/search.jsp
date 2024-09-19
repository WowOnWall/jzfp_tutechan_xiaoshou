<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jzfp_jvavweb.admin.Product" %>
<!DOCTYPE html>
<html>
    <head>
        <title>搜索结果</title>
        <link rel="icon" href="./img/img.png">
        <link rel="stylesheet" href="css/wrapper.css">
    </head>
    <body>
        <h1>搜索结果</h1>
        <table style="margin-left: auto; margin-right: auto; width: 80%;">
            <tr>
                <th>商品名称</th>
                <th>价格</th>
                <th>描述</th>
            </tr>
            <%
                String searchResults = (String) request.getParameter("searchResults");
                List<Product> productList = (List<Product>) request.getSession().getAttribute("productList");
                if (searchResults != null) {
                    for (Product product : productList) {
                        if(product.getName().equals(searchResults)){
            %>
            <tr>
                <td><%= product.getName() %></td>
                <td><%= product.getPrice() %></td>
                <td><img src="<%= product.getDescription()%>" alt="商品" width="50" height="50"/></td>
            </tr>
            <%
                        }
                    }
                }
            %>
        </table>
    </body>
</html>