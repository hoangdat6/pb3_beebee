import "./Pop-ups";

export function createAlertPopUp(title, message, buttons){
    let overlay = createOverlay();
    let alertPopup = document.createElement('div');

    alertPopup.innerHTML = `
        <div class="alert-popup-container">
        <div class="alert-popup card">
            <div class="alert-popup-title">${title}</div>
            <div class="alert-popup-message">${message}</div>
            <div class="alert-popup-button">
                <button class="button-solid-primary btn-m">Có</button>
                <button class="btn-light btn-m">Không</button>
            </div>
        </div>
    </div>
    `;

    overlay.appendChild(alertPopup);

}