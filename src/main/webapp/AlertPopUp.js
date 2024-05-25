
function createAlertPopUp(title, message, buttons){
    return new Promise((resolve, reject) => {
        let overlay = createOverlay();
        let alertPopup = document.createElement('div');

        let buttonElements = buttons.map(button => {
            let buttonElement = document.createElement('button');
            buttonElement.className = button.class;
            buttonElement.textContent = button.text;
            buttonElement.addEventListener('click', () => {
                removeAlert();
                resolve(button.resolveValue);
            });
            return buttonElement;
        });

        alertPopup.innerHTML = `
        <div class="alert-popup-container">
            <div class="alert-popup card">
                <div class="alert-popup-title">${title}</div>
                <div class="alert-popup-message">${message}</div>
                <div class="alert-popup-button">
                </div>
            </div>
        </div>
        `;

        let buttonContainer = alertPopup.querySelector('.alert-popup-button');
        buttonElements.forEach(buttonElement => {
            buttonContainer.appendChild(buttonElement);
        });

        overlay.appendChild(alertPopup);
    });
}

function removeAlert(){
    document.querySelector('#overlay').remove();
}

