$(function() {
    $('#activator').click(function(){
        $('#overlay').fadeIn('fast',function(){
            $('#box').animate({'top':'90px'},700);
        });
    });
    $('#boxclose').click(function(){
        $('#box').animate({'top':'-500px'},700,function(){
            $('#overlay').fadeOut('slow');
        });
    });

});

