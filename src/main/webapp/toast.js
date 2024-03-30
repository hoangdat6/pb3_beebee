function toast(
    {title='', 
    message ='', 
    type = 'info', 
    duration = 3000}){
    const main = document.getElementById('toast');
    if (main)
    {
        const icon = {
            success : "fa-sharp fa-solid fa-circle-check",
            error : "fa-solid fa-circle-exclamation",
            info :"fa-solid fa-circle-info",
            warning: "fa-solid fa-circle-exclamation"
        }
        const toast = document.createElement('div');
        toast.classList.add('toast', `toast--${type}`);
        const delay = (duration / 1000).toFixed(2);
        // toast.style.animation = `slideInLeft 0.3s ease, fadeout linear 1s 3s`;
        toast.innerHTML = `
        <div class="toast_icon">
            <i class="${icon[type]}"></i>
        </div>
        <div class="toast_body">
            <h3 class="toast_title">${title}
            </h3>
            <p class="toast_msg">${message}
            </p>
        </div>
        <div class="toast_close">
            <i class="fa-solid fa-x">
            </i>
        </div>`;
        const IdSettimeout = setTimeout(() => {
            main.removeChild(toast);
        }, duration);

        toast.onclick = function(e){
            if(e.target.closest('.toast_close')){
                main.removeChild(toast);
                clearTimeout(IdSettimeout);
            }
        }
        main.appendChild(toast);
    }
    else console.log('Toast not found');
}

function showSuccessToast(title, message){
    toast({
        title: title,
        message: message,
        type: 'success',
        duration: 3000
    })
}

function showErrorToast(title, message){
    toast({
        title: title,
        message: message,
        type: 'error',
        duration: 3000
    })
}