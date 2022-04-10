$(document).ready(function(){
    var altura = $('.arriba').offset().top;
    
    $(window).on('scroll', function(){
        if ( $(window).scrollTop() > altura ){
            $('.arriba').addClass('fijo');
        }else{
            $('.arriba').removeClass('fijo');
        }
    })
});