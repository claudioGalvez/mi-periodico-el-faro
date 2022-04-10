const nombre = document.getElementById('name');
const email = document.getElementById('mail');

function suscribir() {
    if (!(nombre.value.lenght === 0 && email.value.lenght === 0)) {
        alert('¡Felicidades!\nTe has suscrito a nuestro Newsletter')
    }
}