document.addEventListener("turbolinks:load", function () {
    $("#btn-widgets").click(function () {
        $('#admin-panels').fadeOut('slow');
        $('#how-to-use').fadeOut('slow');
        $('#widgets').fadeIn(2000);
    })
    $("#btn-admin-panels").click(function () {
        $('#widgets').fadeOut('slow');
        $('#how-to-use').fadeOut('slow');
        $('#admin-panels').fadeIn(2000);
    })
    $("#btn-help").click(function () {
        $('#widgets').fadeOut('slow');
        $('#admin-panels').fadeOut('slow');
        $('#how-to-use').fadeIn(2000);
    })
})