function checkPassword(input) {
    var minimumLength = 6;
    var passwordValue = input.value;

    if (passwordValue.length < minimumLength) {
        alert('密码必须至少为6位');
        input.setCustomValidity('密码必须至少为6位');
    } else {
        input.setCustomValidity('');
    }
}

function checkConfirmPassword(input) {
    var password = document.getElementById('pass').value;
    var confirmPassword = input.value;

    if (password !== confirmPassword) {
        alert('两次输入的密码不一致');
    } else {
        input.setCustomValidity('');
    }
}

function submitForm() {
    var form = document.getElementById('form_one');
    if (form.checkValidity()) {
        form.submit();
    }
}


document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('form_one');

    form.addEventListener('submit', function(event) {
        // 执行一些验证
        const username = document.getElementById('first').value;
        const password = document.getElementById('pass').value;
        console.log(username, password);
        const confirmPassword = document.getElementById('pass2').value;

        // 检查用户名是否只包含英文和数字
        if (!/^[a-zA-Z0-9]+$/.test(username)) {
            alert('用户名只能包含英文和数字');
            event.preventDefault(); // 阻止表单提交
            return;
        }

        // 检查密码长度
        if (password.length < 6) {
            alert('密码必须至少为6位');
            event.preventDefault(); // 阻止表单提交
            return;
        }

        // 检查密码是否匹配
        if (password !== confirmPassword) {
            alert('两次输入的密码不一致');
            event.preventDefault(); // 阻止表单提交s

        }

        // 如果所有验证都通过，表单将正常提交
    });
});