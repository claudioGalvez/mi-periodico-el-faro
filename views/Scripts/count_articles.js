const articles = document.getElementsByClassName('col-xs-12 col-sm-12 col-md-6 col-lg-4').length;
document.getElementById('articulo').innerHTML = `<p class="count">Articulos: ${articles}</p>`
