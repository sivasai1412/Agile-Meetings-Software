$(document).ready(function() {
    $('#mycarousel').carousel({ interval: 2000 });
    $('#carouselButton').click(function() {
        if($('#carouselButton').children('span').hasClass('fa-pause')) {
            $('#mycarousel').carousel('pause');
            $('#carouselButton').children('span').removeClass('fa-pause');
            $('#carouselButton').children('span').addClass('fa-play');
        }
        else {
            $('#mycarousel').carousel('cycle');
            $('#carouselButton').children('span').removeClass('fa-play');
            $('#carouselButton').children('span').addClass('fa-pause');
        }
    });
    $('#close').click(function() {
        $('#loginModal').modal('hide');
    });
    $('#cancelButton').click(function() {
            $('#loginModal').modal('hide');
    });
    $('#cancel').click(function() {
        $('#reserve').modal('hide');
    });
    $('#dismiss').click(function() {
        $('#reserve').modal('hide');
    });
   $('#loginButton').click(function() {
    $('#loginModal').modal('toggle');
   });
   $('#reserveButton').click(function() {
    $('#reserve').modal('toggle');
   });
});