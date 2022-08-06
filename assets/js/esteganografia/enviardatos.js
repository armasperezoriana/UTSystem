$(document).ready(function() {

    $(".EnviarPreguntasRegistrar").click(function() {
        //var valido = validar();
      //  if (valido == true) {

            var preguntauno = $("#AgregarUsuarioModal").find("#preguntauno").val();                
            var preguntados = $("#AgregarUsuarioModal").find("#preguntados").val();
            var preguntatres =$("#AgregarUsuarioModal").find("#preguntatres").val();
            var respuestauno = $("#AgregarUsuarioModal").find("#respuestauno").val();                
            var respuestados = $("#AgregarUsuarioModal").find("#respuestados").val();
            var respuestatres =$("#AgregarUsuarioModal").find("#respuestatres").val();

            swal.fire({
                title: "¿Desea guardar las preguntas y respuestas?",
                text: "Estos datos serán guardados como seguridad del usuario.",
                type: "question",
                showCancelButton: true,
                // confirmButtonColor: "#DD6B55",
                confirmButtonText: "Guardar",
                cancelButtonText: "Cancelar",
                closeOnConfirm: false,
            }).then((isConfirm) => {
                if (isConfirm.value) {
                    $.ajax({
                        url: './Esteganografia/RegistrarPregunta',
                        type: 'POST',
                        data: {
                            preguntauno: preguntauno,
                            preguntados: preguntados,
                            preguntatres: preguntatres,
                            respuestauno: respuestauno,
                            respuestados: respuestados,
                            respuestatres: respuestatres,
                        },
                        success: function(respuesta) {
                            console.log(respuesta);
                            if (respuesta == "1") {
                                swal.fire({
                                    type: 'success',
                                    title: 'Preguntas de seguridad guardadas',
                                }).then((isConfirm) => {
                                    location.href = './Usuarios';
                                });
                            }
                            if (respuesta == "2") {
                                swal.fire({
                                    type: 'error',
                                    title: 'Error al guardar los datos',
                                    text: 'Contacte con el soporte',
                                });
                            }
                            if (respuesta == "3") {
                                swal.fire({
                                    type: 'warning',
                                    title: 'Datos repetidos',
                                    text: 'Vuelva a intentar',
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


    //}
    });
});
