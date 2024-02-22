"use strict";
function increaseQuantity() {
    let input = document.querySelector('.Qty__Input');
    let value = parseInt(input.value);
    input.value = value + 1;
  }
  
  function decreaseQuantity() {
    let input = document.querySelector('.Qty__Input');
    let value = parseInt(input.value);
    if (value > 1) {
      input.value = value - 1;
    }
  }