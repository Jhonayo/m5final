
window.onload = function() {
    const urlParams = new URLSearchParams(window.location.search);
    const errorMessage = urlParams.get('error');
    if (errorMessage) {
        alert(errorMessage);
    }
}
document.addEventListener("DOMContentLoaded", function () {
    const mensaje = obtenerMensaje();
    const tipo = obtenerTipo();
    if (mensaje) {
        appendAlert(mensaje, tipo);
    }
});

function obtenerMensaje() {
    const params = new URLSearchParams(window.location.search);
    return params.get("mensaje") || null;
}

function obtenerTipo() {
    const params = new URLSearchParams(window.location.search);
    return params.get("tipo") || "info";
}

function appendAlert(message, type) {
    const alertPlaceholder = document.getElementById('liveAlertPlaceholder');
    const wrapper = document.createElement('div');
    wrapper.innerHTML = `
        <div class="alert alert-${type} alert-dismissible fade show" role="alert">
            <div>${message}</div>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    `;
    alertPlaceholder.append(wrapper);
}
