consulta_alertas();

function consulta_alertas(){
    $.ajax({
        type:"POST",
        url: './Mantenimiento/notificaciones',
    }).done(function(result){
            console.log(result);
    })
}