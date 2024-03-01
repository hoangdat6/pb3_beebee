"use strict";

function increaseQuantity(button) {
    let input = button.parentNode.querySelector('.Qty__Input');
    let value = parseInt(input.value);
    input.value = value + 1;
}

function decreaseQuantity(button) {
    let input = button.parentNode.querySelector('.Qty__Input');
    let value = parseInt(input.value);
    if (value > 1) {
        input.value = value - 1;
    }
}


