$(document).ready(function() {

    $(".EnviarPreguntasRegistrar").click(function() {
        var valido = validar();
        if (valido == true) {

            var preguntauno = $("#AgregarUsuarioModal").find("#preguntauno").val();                
          //  var preguntados = $("#AgregarUsuarioModal").find("#preguntados").val();
          //  var preguntatres =$("#AgregarUsuarioModal").find("#preguntatres").val();
            var respuestauno = $("#AgregarUsuarioModal").find("#respuestauno").val();                
            //var respuestados = $("#AgregarUsuarioModal").find("#respuestados").val();
            //var respuestatres =$("#AgregarUsuarioModal").find("#respuestatres").val();

            swal.fire({
                title: "¿Desea guardar la pregunta y respuesta de seguridad?",
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
                            //preguntados: preguntados,
                            //preguntatres: preguntatres,
                            respuestauno: respuestauno,
                            //respuestados: respuestados,
                            //respuestatres: respuestatres,
                        },
                        success: function(respuesta) {
                            console.log(respuesta);
                            if (respuesta == "1") {
                                swal.fire({
                                    type: 'success',
                                    title: 'Pregunta de seguridad guardada',
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
        }
    });


});
function validar(){
    var form = "";
    var respuesta = $(form).find("#respuestauno").val();
    var rrespuesta = false;
    var pregunta = $(form).find("#pregunta").val();
    var img = $(form).find("#img").val();
    var rimg = false;

     var expRespuesta = /^[a-zA-ZÀ-ÿ\s]{5,40}$/; // Letras, mayusculas minisculas y acentos
   

    if(respuesta==""|pregunta==""|img==""){
      
       swal.fire({
                                        type: 'warning',
                                        title: 'Campos obligatorios',
                                        text: 'Asegurate de llenar todos los campos',
                                    });
        $(".errorRespuesta").html("Debe responder la pregunta");
        $(".errorPregunta").html("Debe seleccionar la pregunta");
          $(".errorImg").html("Debe ingresar la imagen de seguridad");
             return false;
    }
    else{
           if(!expRespuesta.test(respuesta)){
                $(".errorRespuesta").html("Este campo solo acepta caracteres, minimo 3");
                    rnombre = false;
                           return false;
                }else{
                        $(".errorRespuesta").html("Campo validado");
                        $(".errorRespuesta").attr("style", "color:green");
                         rnombre = true;
            }
     return true;  
    
}
}