function increaseQuantity() {
    var input = document.querySelector('.Qty__Input');
    var value = parseInt(input.value);
    input.value = value + 1;
  }
  
  function decreaseQuantity() {
    var input = document.querySelector('.Qty__Input');
    var value = parseInt(input.value);
    if (value > 1) {
      input.value = value - 1;
    }
  }