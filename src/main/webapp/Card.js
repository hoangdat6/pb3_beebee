function formatCurrency(value) {
    return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(value);
}

function createCard(product) {
    return `
        <div class="Card">
            <a href='${product.productUrl}'>
              <img class="Card-Image" src="${product.productImgPath}">
              <span class="Hot">Hot</span>
              <span class="Sale">-${product.discount}%</span>
            </a>
            <div class="Card_top">
                <a href='${product.productUrl}'>
            <h3>${product.name}</h3>
          </a>
              <a class="Card_shop" href=${product.sellerUrl}>
                <img src="${product.sellerAvatar}" alt="Ảnh cửa hàng">
                <span>${product.sellerName}</span>
              </a>
            </div>
            <div class="Card_bot">
                <div class="Card_price">
                    <span class="oldPrice">
                    ${formatCurrency(product.price)}
                    </span>
                    <span class="newPrice">
                        ${formatCurrency(product.price * (1 - product.discount / 100))}
                    </span>
                </div>
                <div class="Card_rating">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <span class="Card_ratingCount">(62.5k đánh giá) </span>
                </div>
            </div>
        </div>
    `;
}



