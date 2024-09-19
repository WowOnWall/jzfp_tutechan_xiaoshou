document.addEventListener('DOMContentLoaded', function() {
    var cartIcon = document.querySelector('.cart img');

    cartIcon.addEventListener('click', function() {
        // 移除之前的动画类，以防止重复触发
        cartIcon.classList.remove('shake');

        // 添加动画类来触发动画
        cartIcon.classList.add('shake');

        // 动画结束后移除动画类
        cartIcon.addEventListener('animationend', function() {
            cartIcon.classList.remove('shake');
        });
    });
});