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
        <link rel="stylesheet" href="css/two_body.css">
    </head>
    <body>
        <table>
            <tr>
                <td>
                    <img src="./img/dazao.png" alt="永寿大枣"/>
                    <p>永寿大枣 8.00元/斤</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/taozi.png" alt="永寿桃子"/>
                    <p>永寿桃子 16.00元/斤</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/lan.png" alt="景泰蓝工艺画"/>
                    <p>景泰蓝工艺画 25.00元/幅</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="./img/jingao.png" alt="永寿热镜糕"/>
                    <p>永寿热镜糕 25.00元/斤</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/huaihua.png" alt="永寿槐花饼"/>
                    <p>永寿槐花饼 3.00元/个</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/huaihuami.png" alt="永寿槐花蜜"/>
                    <p>永寿槐花蜜 23.00元/提</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="./img/dougan.png" alt="永寿豆干"/>
                    <p>永寿豆干 4.00元/包</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/qiezi.png" alt="永寿茄子"/>
                    <p>永寿茄子 7.00元/斤</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/hongshu.png" alt="永寿红薯"/>
                    <p>永寿红薯 6.00元/斤</p>
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
                    window.location.href = 'index.jsp'; // 假设上一页是 index.jsp
                } else if (direction === 'next') {
                    window.location.href = 'three_page.jsp'; // 假设下一页是 two_page.jsp
                }
            }
        </script>
        <script type="text/javascript" src="js/count.js"></script>
    </body>
</html>
