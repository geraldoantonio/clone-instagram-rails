import Toastify from 'toastify-js';
document.addEventListener('DOMContentLoaded', () => {
    const backGroundColors = {
        alert: "linear-gradient(to right, rgb(255, 95, 109), rgb(255, 195, 113)",
        error: "linear-gradient(to right, rgb(255, 0, 0), rgb(255, 195, 113)",
        notice: "linear-gradient(to right, rgb(0, 176, 155), rgb(150, 201, 61))"
    }

    JSON.parse(document.body.dataset.flashMessages).forEach(flashMessage => {
        const [type, message] = flashMessage
        Toastify({
            text: message,
            duration: 3000,
            close: true,
            backgroundColor: backGroundColors[type],
            stopOnFocus: true
        }).showToast()
    })

})