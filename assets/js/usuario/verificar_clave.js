//$('body').on('click', '#modalForm', async function (e) {
    //   e.preventDefault();
    $(".confirmarClaveEspecial").click(function() {
        var validarClave = validarClaveEspecial();
            if(validarClave==true){
            var usuario = $("#modalForm").find("#usuario").val();               
             var clave_especial = $("#modalForm").find("#clave_especial").val();
            swal.fire({
                title: "¿Esta seguro de la clave especial?",
                text: "Estos datos serán verificados.",
                type: "question",
                showCancelButton: true,
                confirmButtonText: "Guardar",
                cancelButtonText: "Cancelar",
                closeOnConfirm: false,
            }).then((isConfirm) => {
                if (isConfirm.value) {
                    $.ajax({
                        url: './Usuarios/ConsultarClaveEspecial',
                        type: 'POST',
                        data: {
                            clave_especial: clave_especial,
                            usuario: usuario,
                        },
                        success: function(respuesta) {
                           //console.log(respuesta + clave_especial+usuario);
                            if (respuesta == "1") {

                            swal.fire({
                                 type: 'success',
                                title: 'Acceso correcto',
                             }).then((isConfirm) => {
                                location.href = './Mantenimiento';
                             });

                            }
                            if (respuesta == "2") {
                                swal.fire({
                                    type: 'error',
                                    title: 'Error al consultar los datos',
                                    text: 'Usuario o clave especial incorrecto',
                                });
                            }
                        }
                    });
                } else {
                    swal.fire({
                        type: 'error',
                        title: '¡Proceso cancelado!',
                    });
                }
            });
          }
        });

    //});

    function validarClaveEspecial(){

        var usuario = $("#modalForm").find("#usuario").val();               
        var clave_especial = $("#modalForm").find("#clave_especial").val();
    
        var expUsername = /^[a-zA-Z0-9\_\-]{4,16}$/;
       
    
        if(usuario==""|clave_especial==""){
                swal.fire({
                    type: 'info',
                    title: 'Campos obligatorios',
                    text: 'Para modificar debes llenar los datos solicitados',
                });
       
            $(".errorUsername").html("Ingresa tu usuario");
            $(".erroClaveEspecial").html("Ingrese tu clave especial");
                 return false;
        }
            return true;     
    }
      