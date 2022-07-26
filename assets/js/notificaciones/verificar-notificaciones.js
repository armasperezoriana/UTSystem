consulta_alertas();

function consulta_alertas(){
    $.ajax({
        type:"POST",
        url: './Mantenimiento/notificaciones',
    }).done(function(result){
           var arreglo=JSON.parse(result);
           console.log(arreglo[0]['titulo']);

    })
}