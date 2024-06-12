function createProductList(images, selectedImageIndex){
    let overlay = createOverlay();
    let PopUps = document.createElement('div');
    PopUps.id = 'product-list-popup';

    PopUps.innerHTML = `
       <div class="popup-product-list"> 
            <div class="main_img">
                <div><i class="fa-solid fa-chevron-left Next1" id="prev-left-pu"></i></div>
                <img src="${images[selectedImageIndex]}" class="main_image_pu" id="main_image_pu-${selectedImageIndex}">
                <div><i class="fa-solid fa-chevron-right Next1" id="next-right-pu"></i></div>
            </div>
            <div class="product_list">
           ` + images.map((image, index) => {
                    return `<img src="${image}" class="image-item image-item-popup" id='image-${index}' alt="anh san pham">`
               }).join('') +
            `      
             </div>
        </div>
    `

    overlay.appendChild(PopUps);
}



