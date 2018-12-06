$(".eliminar").on('click', function(){	

    var r = confirm("¿Eliminar registro?");
    if (r == true) {
        txt = "You pressed OK!";
        $(form_eliminar).attr("method", "POST");
    } else {
        txt = "You pressed Cancel!";
    }
});