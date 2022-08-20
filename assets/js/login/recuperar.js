$(document).ready(function() {
    $("#recuperar").on("submit", function (e) {
        e.preventDefault();
    
             var correo = $("#recuperar").find("#correo").val();
            // var usuario = $("#recuperar").find("#usuario").val();
             //var id_usuario = $("#recuperar").find("#id_usuario").val();
           //  console.log(id_usuario+""+correo+""+usuario);
                    $.ajax({
                        url: './Login/emailValidation',
                        type: 'POST',
                        data: {
                    
                            correo: correo,

                        },
                        success: function(response) {
                            swal.fire({
                                type: 'success',
                               title: 'Correo Verificado',
                            }).then((isConfirm) => {
                              // location.href = './Login/mailReset';
                            });
                        },
                        error: (response) => {
                            console.log(response);
                            Swal.fire("¡Error!",  "El correo ingresado  no esta registrado en el sistema", "error");
                          }
                    });
                } )
                    });
//}
     