$(function() {
    $('#activator').click(function(){

            $('#box').animate({'top':'130px'},3000);

    });
    $('#boxclose').click(function(){
        $('#box').animate({'top':'-500px'},700,function(){
            <!--$('#overlay').fadeOut('slow'); -->
        });
    });

});

setTimeout(function() {
        $('#flash_message').fadeOut('slow');}, 4000
);
