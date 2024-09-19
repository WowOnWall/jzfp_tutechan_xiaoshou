<!DOCTYPE html>
<html>
    <head>
        <%@ page contentType="text/html; charset=UTF-8"%>
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
                    <label>
                        <input type="search" name="search" placeholder="搜索商品...">
                    </label>
                    <button>搜索</button>
            </div>
            <div class="cart">
                <div class="cart-message">
                    游客请登录后再购物，谢谢
                </div>
                <div class="login">
                    <button><a href="login.jsp">登录</a></button>
                </div>
                <div class="register">
                    <button><a href="register.jsp">注册</a></button>
                </div>

                <a>
                    <img src="./img/gouwuche.png" alt="购物车" height="50" width="50"/>
                </a>
            </div>
        </div>
        <table>
            <tr>
                <td>
                    <img src="./img/chu.png" alt="永寿沙棘醋"/>
                    <p>永寿沙棘醋 45.00元/箱</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/mahua.png" alt="永寿大麻花"/>
                    <p>永寿大麻花 6.00元/个 </p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/apple.png" alt="永寿苹果"/>
                    <p>永寿苹果 10.00元/斤</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="./img/laozao.png" alt="醪糟粉"/>
                    <p>醪糟粉 10.00元/碗</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/laofeng.png" alt="烙粉"/>
                    <p>烙粉 5.00元/碗</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/youpo.png" alt="永寿油泼面"/>
                    <p>永寿油泼面 12.00元/碗</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="./img/saozhi.png" alt="永寿哨子面"/>
                    <p>永寿哨子面 13.00元/碗</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/shaji.png" alt="永寿沙棘"/>
                    <p>永寿沙棘 5.00元/斤</p>
                    <div class="counter">
                        <button class="decrease">-</button>
                        <span>0</span>
                        <button class="increase">+</button>
                    </div>
                </td>
                <td>
                    <img src="./img/hetao.png" alt="永寿核桃"/>
                    <p>永寿核桃 15.00元/斤</p>
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
                    window.location.reload(); // 假设上一页是 index.jsp
                } else if (direction === 'next') {
                    window.location.href = 'two_page.jsp'; // 假设下一页是 two_page.jsp
                }
            }
        </script>
        <script type="text/javascript" src="js/count.js"></script>
        <script type="text/javascript" src="js/car.js"></script>
    </body>
</html>