document.addEventListener('DOMContentLoaded', function() {
    const decreaseButtons = document.querySelectorAll('.decrease');
    const increaseButtons = document.querySelectorAll('.increase');

    decreaseButtons.forEach(button => {
        button.addEventListener('click', function() {
            const input = this.nextElementSibling;
            const value = parseInt(input.value);
            if (value > 1) {
                input.value = value - 1;
                updateTotal(input);
            }
        });
    });

    increaseButtons.forEach(button => {
        button.addEventListener('click', function() {
            const input = this.previousElementSibling;
            const value = parseInt(input.value);
            input.value = value + 1;
            updateTotal(input);
        });
    });
});

function updateTotal(input) {
    const itemTotal = input.closest('.cart-item');
    const priceElement = itemTotal.querySelector('.item-details p');
    const quantity = parseInt(input.value);
    const pricePerUnit = parseFloat(priceElement.textContent.split(': ')[1]);
    itemTotal.querySelector('.item-total').textContent = `总价: $${(pricePerUnit * quantity).toFixed(2)}`;
}