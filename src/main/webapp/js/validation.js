
document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form");
    form.addEventListener("submit", function(event) {
        const password = document.getElementById("inputPassword").value;
        const confirmPassword = document.getElementById("inputPasswordConfirmacion").value;

        if (password !== confirmPassword) {
            alert("Las contraseñas no coinciden.");
            event.preventDefault();
        }
    });
});
