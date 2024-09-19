<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/9/5
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>永寿土特产销售</title>
        <link rel="icon" href="./img/img.png">
        <link rel="stylesheet" href="css/tabel.css">
        <link rel="stylesheet" href="css/next.css">
        <link rel="stylesheet" href="css/three_body.css">
        <link rel="stylesheet" href="css/gouwuche.css">
    </head>
    <body>
        <table>
            <tr>
                <td>
                    <img src="./img/hupotang.png" alt="琥珀糖"/>
                    <p>琥珀糖 11.00元/斤</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
            </tr>
        </table>
        <div class="pagination">
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
                    window.location.href = 'two_page.jsp'; // 假设上一页是 index.jsp
                } else if (direction === 'next') {
                    window.location.reload(); // 假设下一页是 two_page.jsp
                }
            }
        </script>
        <script type="text/javascript" src="js/count.js"></script>

    </body>
</html>
