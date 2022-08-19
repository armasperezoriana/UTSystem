$(document).ready(function() {
    $("#recuperar").on("submit", function (e) {
        e.preventDefault();
    
             var correo = $("#recuperar").find("#correo").val();
            // var usuario = $("#recuperar").find("#usuario").val();
             //var id_usuario = $("#recuperar").find("#id_usuario").val();
           //  console.log(id_usuario+""+correo+""+usuario);
                    $.ajax({
                        url: './Login/CambiarPassword',
                        type: 'POST',
                        data: {
                          //  id_usuario: id_usuario,
                            correo: correo,
                            //usuario:usuario,
                        },
                        success: function(respuesta) {
                            console.log(respuesta);
                            if (respuesta == "1") {
                            swal.fire({
                                 type: 'success',
                                title: 'Correo Enviado',
                             }).then((isConfirm) => {
                                //location.href = './Login/OlvidoClave';
                                location.href = './Login/mailReset';
                             });

                            }
                            if (respuesta == "2") {
                                swal.fire({
                                    type: 'error',
                                    title: 'Los datos no coinciden con los registrados en el sistema',
                                    text: 'Intente nuevamente',
                                });
                            }
                            if (respuesta == "3") {
                                swal.fire({
                                    type: 'warning',
                                    title: 'Datos invalidos',
                                    text: 'Intente de nuevo',
                                });
                            }
                        }
                    });
                } )
                    });
//}
     