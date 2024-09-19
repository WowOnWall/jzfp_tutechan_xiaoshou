<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.jzfp_jvavweb.admin.Product" %>
<!DOCTYPE html>
<html>
    <head>
        <title>永寿土特产销售</title>
        <link rel="icon" href="./img/img.png">
        <link rel="stylesheet" href="css/wrapper.css">
        <link rel="stylesheet" href="css/tabel.css">
        <link rel="stylesheet" href="css/next.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="logo-div">
                <img src="./img/ta.png" alt="logo" height="50" width="50">
                <a href="https://baike.baidu.com/item/%E6%B0%B8%E5%AF%BF%E5%8E%BF/4927568">
                    关于永寿
                </a>
            </div>
            <div class="search-form">
                <form action="search.jsp" method="get">
                        <input type="search" name="searchResults">
                    <button type="submit">搜索</button>
                </form>
            </div>
            <div class="cart">
                <%
                    // 获取当前会话
                    HttpSession session1 = request.getSession(false);
                    String userName = null;

                    // 检查会话中是否有用户名属性
                    if (session1 != null) {
                        userName = (String) session1.getAttribute("username");
                    }

                    // 如果用户已登录（即用户名不为空），显示欢迎信息
                    if (userName != null && !userName.isEmpty()) {
                        out.println("欢迎, " + userName);
                    }
                %>
                <button onclick="addToCart()">
                    <img src="./img/gouwuche.png" alt="购物车" height="50" width="50"/>
                </button>
            </div>
        </div>
        <table>
            <tr>
            <%
                List<Product> productList = (List<Product>) request.getSession().getAttribute("productList");
                int count = 0; // 添加计数器
                if (productList != null) {
                    for (Product product : productList) {
                        count++; // 每次循环计数器加1
            %>
                <td>
                    <img src="<%=product.getDescription()%>" alt="<%=product.getName()%>"/>
                    <p><%=product.getName()%> <%=product.getPrice()%>元</p>
                    <div class="counter">
                        <button class="decrease" data-product-id="<%=product.getId()%>">-</button>
                        <span id="quantity_<%=product.getId()%>">0</span>
                        <button class="increase" data-product-id="<%=product.getId()%>">+</button>
                    </div>
                </td>
                <%
                    // 检查计数器，每三个商品换行
                    if (count % 3 == 0) {
                %>
            </tr>
            <tr>
                        <%
            }
        %>
            <%
                    }
                }
            %>
        </table>
        <div class="pagination" style="display: none">
            <a href="javascript:void(0);" class="prev" onclick="goToPage('prev')">&laquo; Prev</a>
            <a href="index.jsp" class="page">1</a>
            <a href="two_page.jsp" class="page">2</a>
            <a href="three_page.jsp" class="page">3</a>
            <a href="javascript:void(0);" class="next" onclick="goToPage('next')">Next &raquo;</a>
        </div>

        <script>
            function getCurrentPage() {
                var path = window.location.pathname;
                // 获取当前页面的文件名
                return path.split('/').pop(); // 返回当前页面的文件名
            }

            function goToPage(direction) {
                if (direction === 'prev') {
                    window.location.reload(); // 假设上一页是 index.jsp
                } else if (direction === 'next') {
                    window.location.href = 'two_page.jsp'; // 假设下一页是 two_page.jsp
                }
            }
        </script>
        <script type="text/javascript" src="js/count.js"></script>
        <script>
            function addToCart() {
                var products = [];
                document.querySelectorAll('.counter').forEach(function(counter) {
                    var productId = counter.querySelector('[data-product-id]').dataset.productId;
                    var quantity = counter.querySelector('span').textContent;
                    products.push('product_id=' + productId + '&quantity=' + quantity);
                });
                var queryString = products.join('&');
                window.location.href = 'buy_car.jsp?' + queryString;
            }
        </script>
    </body>
</html>