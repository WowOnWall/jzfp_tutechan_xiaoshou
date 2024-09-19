document.addEventListener('DOMContentLoaded', function() {
    const decreaseButtons = document.querySelectorAll('.decrease');
    const increaseButtons = document.querySelectorAll('.increase');

    decreaseButtons.forEach(button => {
        button.addEventListener('click', function() {
            const span = document.getElementById('quantity_' + this.dataset.productId);
            const quantity = parseInt(span.textContent);
            if (quantity > 0) {
                span.textContent = quantity - 1;
                updateQuantity(this.dataset.productId, quantity - 1);
            }
        });
    });

    increaseButtons.forEach(button => {
        button.addEventListener('click', function() {
            const span = document.getElementById('quantity_' + this.dataset.productId);
            const quantity = parseInt(span.textContent);
            span.textContent = quantity + 1;
            updateQuantity(this.dataset.productId, quantity + 1);
        });
    });
});