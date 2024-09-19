<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.jzfp_jvavweb.admin.Product" %>
<%@ page import="java.util.*" import="jakarta.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>购物车</title>
        <link rel="stylesheet" href="css/buy_car.css">
    </head>
    <body class="cart-summary">
        <h2>购物车</h2>
        <table>
            <tr>
                <th>商品名称</th>
                <th>价格</th>
                <th>数量</th>
                <th>小计</th>
            </tr>
            <%
                String queryString = request.getQueryString();
                int quantity = 0;
                if (queryString != null && !queryString.isEmpty()) {
                    String[] params = queryString.split("&");
                    Map<Integer, Integer> quantities = new HashMap<>();

                    String productId = null;
                    for (int i = 0; i < params.length; i += 2) {
                        productId = params[i].substring(params[i].indexOf('=') + 1);
                        String quantityStr = params[i + 1].substring(params[i + 1].indexOf('=') + 1);
                        quantity = Integer.parseInt(quantityStr);

                        quantities.put(Integer.parseInt(productId), quantity);
                    Product p = getProductById(productId, request); // 假设这个方法返回对应ID的商品对象
                    if (p != null) {
            %>
            <tr>
                <td><%=p.getName()%></td>
                <td><%=p.getPrice()%></td>
                <td><%=quantity%></td>
                <td><%=p.getPrice().intValue() * Integer.parseInt(String.valueOf(quantity))%></td>
            </tr>
            <%
                    }
                }
                }
            %>
        </table>
    </body>
</html>
<%!
    private Product getProductById(String productId, HttpServletRequest request) {
        List<Product> productList = (List<Product>)request.getSession().getAttribute("productList");
        if (productList != null) {
            for (Product product : productList)
                if (product.getId().equals(Integer.parseInt(productId))) {
                    return product;
                }
        }
        return null;
    }
%>