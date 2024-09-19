// 当文档加载完成时绑定事件监听器
document.addEventListener('DOMContentLoaded', function() {
    // 获取表单元素
    var form = document.querySelector('form');

    // 为表单添加 submit 事件监听器
    form.addEventListener('submit', function(event) {
        // 获取输入字段
        var nameInput = form.querySelector('input[name="name"]');
        var priceInput = form.querySelector('input[name="price"]');
        var descriptionInput = form.querySelector('input[name="description"]');

        // 过滤名字：只允许中文和字母和数字
        nameInput.value = nameInput.value.replace(/[^\u4e00-\u9fa5a-zA-Z0-9]/g, '');

        // 过滤价格：只允许数字和小数点
        priceInput.value = priceInput.value.replace(/[^0-9.]/g, '');

        // 检查名字是否为空
        if (nameInput.value.trim() === '') {
            alert('名称不合规范');
            event.preventDefault(); // 阻止表单提交
            return false;
        }

        // 检查价格是否为空
        if (priceInput.value.trim() === '') {
            alert('价格输入非法');
            event.preventDefault(); // 阻止表单提交
            return false;
        }

        // 过滤图片后缀名：只允许 jpg, jpeg, png, gif
        var file = descriptionInput.files[0];
        if (file) {
            var validTypes = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
            if (!validTypes.test(file.name)) {
                alert('只允许上传 jpg, jpeg, png, gif 格式的图片');
                event.preventDefault(); // 阻止表单提交
            }
        }
    });
});