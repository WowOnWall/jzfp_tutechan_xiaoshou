document.addEventListener('DOMContentLoaded', function() {
    var currentPage = 1;

    function loadPage(page) {
        // 这里应该是加载数据的逻辑
        console.log("Loading page: " + page);
        // 更新页面内容
        // ...
        // 更新分页按钮的激活状态
        document.querySelectorAll('.pagination .page').forEach(function(el) {
            el.classList.remove('active');
            if (el.textContent === page) {
                el.classList.add('active');
            }
        });
    }

    document.querySelectorAll('.pagination .page').forEach(function(el) {
        el.addEventListener('click', function(e) {
            e.preventDefault();
            var page = el.textContent;
            currentPage = page;
            loadPage(page);
        });
    });

    document.querySelector('.pagination .prev').addEventListener('click', function(e) {
        e.preventDefault();
        var page = currentPage - 1;
        if (page > 0) {
            currentPage = page;
            loadPage(page);
        }
    });

    document.querySelector('.pagination .next').addEventListener('click', function(e) {
        e.preventDefault();
        var page = currentPage + 1;
        // 这里应该检查是否有下一页
        loadPage(page);
    });

    // 初始化加载第一页
    loadPage(currentPage);
});
