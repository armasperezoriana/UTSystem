$(document).ready(function() {
    var seguridadImg = "", seguridadImgActu = "", seguridadPreguntaActu = "";
    $(".EnviarUsuariosRegistrar").click(function() {
        var valido = validarM();
        var validarS = validarSeguridad();
        if (valido == true && validarS == true) {

            var nombre = $("#AgregarUsuarioModal").find("#nombre").val();                
            var apellido = $("#AgregarUsuarioModal").find("#apellido").val();
            var cedula =$("#AgregarUsuarioModal").find("#cedula").val();
            var username = $("#AgregarUsuarioModal").find("#username").val();
            var rol = $("#AgregarUsuarioModal").find("#rol").val();
            var pass = $("#AgregarUsuarioModal").find("#pass2").val();
             var correo = $("#AgregarUsuarioModal").find("#correo").val();
             if(seguridadImg == ""){
                swal.fire({
                    type: 'warning',
                    title: 'Seleccione una imagen de seguridad',
                    text: 'Imagen obligatoria',
                });
                return 0;
            }
            var preguntauno = $("#AgregarUsuarioModal").find("#preguntauno").val();  
          
            var respuestauno = $("#AgregarUsuarioModal").find("#respuestauno").val();        
            swal.fire({
                title: "¿Desea guardar los datos ingresados?",
                text: "Estos datos serán guardados.",
                type: "question",
                showCancelButton: true,
                confirmButtonText: "Guardar",
                cancelButtonText: "Cancelar",
                closeOnConfirm: false,
            }).then((isConfirm) => {
                if (isConfirm.value) {
                    $.ajax({
                        url: './Usuarios/Registrar',
                        type: 'POST',
                        data: {
                            nombre: nombre,
                            apellido: apellido,
                            cedula: cedula,
                            username: username,
                            rol: rol,
                            pass: pass,
                            correo: correo,
                            preguntauno: preguntauno,
                            img: seguridadImg,
                            respuestauno: respuestauno,
                        },
                        success: function(respuesta) {
                            console.log(respuesta);
                            if (respuesta == "1") {

                            swal.fire({
                                 type: 'success',
                                title: 'Registro guardado exitosamente',
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

        //Selección de imagen de seguridad
        $('.card-seguridad-img').on('click', function (e) {
            if ($(this).attr('data-action') == "registrar") {
                seguridadImg = $(this).attr('data-img');
            }
            else {
                seguridadImgActu = $(this).attr('data-img');
            }
            console.log($(this).attr('data-img'))
            $('.card-seguridad-img').removeClass('bg-primary');
            $(this).addClass('bg-primary');
        })
    $(".ModificarUsuarios").click(function() {
        var seguridadImg = "", seguridadImgActu = "", seguridadPreguntaActu = "";
       // var valido = validarM(true);
           
        if (valido == true) {

            var id_usuario = $("#modificarUsuario").find("#id_usuario").val();
            var nombre = $("#modificarUsuario").find("#nombre").val();
            var apellido = $("#modificarUsuario").find("#apellido").val();
            var cedula =$("#modificarUsuario").find("#cedula").val();;
            var username = $("#modificarUsuario").find("#username").val();
            var rol = $("#modificarUsuario").find("#rol").val();
            var pass = $("#modificarUsuario").find("#pass1").val();
              var correo = $("#modificarUsuario").find("#correo").val();

              if(seguridadImg == ""){
                swal.fire({
                    type: 'warning',
                    title: 'Seleccione una imagen de seguridad',
                    text: 'Imagen obligatoria',
                });
                return 0;
            }
            var preguntauno = $("#AgregarUsuarioModal").find("#preguntauno").val();  
          
            var respuestauno = $("#AgregarUsuarioModal").find("#respuestauno").val(); 
            swal.fire({
                title: "¿Desea guardar los datos ingresados?",
                text: "Estos datos serán guardados.",
                type: "question",
                showCancelButton: true,
                // confirmButtonColor: "#DD6B55",
                confirmButtonText: "Guardar",
                cancelButtonText: "Cancelar",
                closeOnConfirm: false,
            }).then((isConfirm) => {
                if (isConfirm.value) {
                    $.ajax({
                        url: './Usuarios/Modificar',
                        type: 'POST',
                        data: {
                            id_usuario: id_usuario,
                            nombre: nombre,
                            apellido: apellido,
                            cedula: cedula,
                            username: username,
                            rol: rol,
                            pass: pass,
                            correo: correo,
                            preguntauno: preguntauno,
                            img: seguridadImg,
                            respuestauno: respuestauno,
                        },
                        success: function(respuesta) {
                            alert(pass);
                            if (respuesta == "1") {
                                swal.fire({
                                    type: 'success',
                                    title: 'Registro modificado exitosamente',
                                }).then((isConfirm) => {
                                    location.href = './Usuarios';
                                });
                            }
                            if (respuesta == "2") {
                                swal.fire({
                                    type: 'error',
                                    title: 'Error al modificar los datos',
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
    //
    $('.editar').click(function(e){
        e.preventDefault();
        mostrar($(this).attr('data-id'), "#modificarUsuario", "#ModificarUsuarioModal");
    })
    $('.consultar').click(function(e){
        e.preventDefault();
        mostrar($(this).attr('data-id'), "#consultarUsuario", "#ConsultarUsuarioModal");
    })

    const mostrar = (id, formulario, modal) => {
        $.ajax({
            type: "POST",
            url: "Usuarios/Mostrar/"+id,
            success: function (response) {
                let json = JSON.parse(response);
                let usuario = json.data;
                $(formulario).find("#id_usuario").val(usuario.id_usuario);
                $(formulario).find("#nombre").val(usuario.nombre);
                $(formulario).find("#apellido").val(usuario.apellido);
                $(formulario).find("#username").val(usuario.usuario);
                $(formulario).find("#cedula").val(usuario.cedula);
                $(formulario).find("#rol").val(usuario.rol);
                $(formulario).find("#correo").val(usuario.correo);
               
                $(modal).modal('show');
            },
            error: function (response) {
                console.log(response.getAllResponseHeaders())
            }
        });
    }

    // Inhabilitar Usuario
    $('body').on('click', '.inhabilitar', function(e) {
        e.preventDefault();

        Swal.fire({
            title: '¿Está Seguro?',
            text: "El usuario sera eliminado del sistema",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            cancelButtonText: 'Cancelar',
            confirmButtonText: 'Si, eliminar!'
        }).then((result) => {
            if (result.value) {
                inhabilitar($(this).attr('data-id'));
            }
        })
    });
    // Habilitar Usuario
    $('body').on('click', '.habilitar', function(e) {
        e.preventDefault();

        Swal.fire({
            title: '¿Está Seguro?',
            text: "El usuario será habilitado en el sistema",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            cancelButtonText: 'Cancelar',
            confirmButtonText: 'Si!'
        }).then((result) => {
            if (result.value) {
                habilitar($(this).attr('data-id'));
            }
        })
    });

});





function validarM(modificar = true) {
    var form = "";

   var expNombre = /^[a-zA-ZÀ-ÿ\s]{3,20}$/;
    var expApellido = /^[a-zA-ZÀ-ÿ\s]{3,20}$/;
    var expCedula =/^\d{7,14}$/;
    var expCorreo = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
    var expPass = /^.{6,12}$/;
    var expUsername = /^[a-zA-Z0-9\_\-]{4,16}$/;
    
        form = "#modificarUsuario";

    var nombre = $(form).find("#nombre").val();
    var rnombre = false;

    var apellido = $(form).find("#apellido").val();
    var rapellido = false;

    var cedula = $(form).find("#cedula").val();
    var rcedula = false;

    var username = $(form).find("#username").val();
    var rusername = false;

    var rol = $(form).find("#rol").val();
    var rrol = false;

    var pass1 = $(form).find("#pass1").val();
    var rpass1 = false;

    var pass2 = $(form).find("#pass2").val();
    var rpass2 = false;


    var correo = $(form).find("#correo").val();
    var rcorreo = false;

if(nombre==""|apellido==""|cedula==""|username==""|rol==""|pass1==""|pass2==""|correo==""){

     swal.fire({
                                    type: 'warning',
                                    title: 'Campos obligatorios',
                                    text: 'Asegurate de llenar todos los campos',
                                });
     $(".errorNombre").html("Debe ingresar su nombre");
       $(".errorApellido").html("Debe ingresar su apellido");
        $(".errorCedula").html("Debe ingresar su cedula");
         $(".errorUsername").html("Debe ingresar su nombre de usuario");
          $(".errorRol").html("Debe seleccionar su rol");
             $(".errorPass1").html("La clave acepta de 6 a 12 digitos y solo numeros");
             $(".errorpass").html("La clave acepta de 6 a 12 digitos y solo numeros");
               $(".errorPass2").html("Confirmar Contraseña");
                  $(".errorCorreo").html("Debe ingresar un correo electronico valido");
               
}

else{
if(!expCedula.test(cedula)){
    $(".errorCedula").html("El campo cedula no coincide con el formato esperado 7 a 10 numeros");
       rcedula = false;
       return false;
} else {
    $(".errorCedula").html("");
   rcedula = true;
             $(".errorCedula").html("Cédula valida");
           $(".errorCedula").attr("style", "color:green");

}if(!expNombre.test(nombre)){
            $(".errorNombre").html("El campo nombre solo acepta caracteres, minimo 4");
                rnombre = false;
                return false;
    } else {
            $(".errorNombre").html("Campo validado");
            $(".errorNombre").attr("style", "color:green");
            rnombre = true;
        }
         if(!expApellido.test(apellido)){
            $(".errorApellido").html("El campo apellido solo acepta caracteres,  minimo 4");
                rapellido = false;
                return false;
    } else {
            $(".errorApellido").html("Campo validado");
            $(".errorApellido").attr("style", "color:green");
            rapellido = true;
        }if(!expUsername.test(username)){
            $(".errorUsername").html("Error el campo usuario acepta letras, numeros, guion y guion bajo, minimo 4 caracteres");
               rusername = false;
               return false;
    } else {
            $(".errorUsername").html("");
           rusername = true;
            $(".errorUsername").html("Usuario valido");
             $(".errorUsername").attr("style", "color:green");
        }if(!expPass.test(pass1)){
            $(".errorpass").html("La clave acepta de 6 a 12 digitos,pueden ser numeros, signos especiales y letras");
               rpass = false;
               return false;
    } else {
            $(".errorpass").html("Contraseña valida");
             $(".errorpass").attr("style", "color:green");
           rpass = true;
        }if(!expCorreo.test(correo)){
            $(".errorCorreo").html("El formato del correo no es valida");
               rcorreo = false;
               return false;
    } else {
            $(".errorCorreo").html("Correo valido");
            $(".errorCorreo").attr("style", "color:green");
           rcorreo = true;
        }

 }
 
    if (rpass1 == true && rpass2 == true) {
        rpassAp = true;
    }

    var retorno = false;
    if (rnombre == true && rapellido == true) {
        retorno = true;
    }
    return retorno;
}

function validar(modificar = false) {
    var form = "";

   var expNombre = /^[a-zA-ZÀ-ÿ\s]{3,20}$/;
    var expApellido = /^[a-zA-ZÀ-ÿ\s]{3,20}$/;
    var expCedula =/^\d{7,14}$/;
    var expCorreo = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
    var expPass = /^.{6,12}$/;
    var expUsername = /^[a-zA-Z0-9\_\-]{4,16}$/;

    if(!modificar){
        form = "#AgregarUsuarioModal";
    }
    else{
        form = "#modificarUsuario";
    }
    var nombre = $(form).find("#nombre").val();
    var rnombre = false;

    var apellido = $(form).find("#apellido").val();
    var rapellido = false;

    var cedula = $(form).find("#cedula").val();
    var rcedula = false;

    var username = $(form).find("#username").val();
    var rusername = false;

    var rol = $(form).find("#rol").val();
    var rrol = false;

    var pass1 = $(form).find("#pass1").val();
    var rpass1 = false;

    var pass2 = $(form).find("#pass2").val();
    var rpass2 = false;


    var correo = $(form).find("#correo").val();
    var rcorreo = false;

if(nombre==""|apellido==""|cedula==""|username==""|rol==""|pass1==""|pass2==""|correo==""){

     swal.fire({
                                    type: 'warning',
                                    title: 'Campos obligatorios',
                                    text: 'Asegurate de llenar todos los campos',
                                });
     $(".errorNombre").html("Debe ingresar su nombre");
       $(".errorApellido").html("Debe ingresar su apellido");
        $(".errorCedula").html("Debe ingresar su cedula");
         $(".errorUsername").html("Debe ingresar su nombre de usuario");
          $(".errorRol").html("Debe seleccionar su rol");
             $(".errorPass1").html("La clave acepta de 6 a 12 digitos y solo numeros");
             $(".errorpass").html("La clave acepta de 6 a 12 digitos y solo numeros");
               $(".errorPass2").html("Confirmar Contraseña");
                  $(".errorCorreo").html("Debe ingresar un correo electronico valido");
               
}

else{
if(!expCedula.test(cedula)){
    $(".errorCedula").html("El campo cedula no coincide con el formato esperado 7 a 10 numeros");
       rcedula = false;
       return false;
} else {
    $(".errorCedula").html("");
   rcedula = true;
             $(".errorCedula").html("Cédula valida");
           $(".errorCedula").attr("style", "color:green");

}if(!expNombre.test(nombre)){
            $(".errorNombre").html("El campo nombre solo acepta caracteres, minimo 4");
                rnombre = false;
                return false;
    } else {
            $(".errorNombre").html("Campo validado");
            $(".errorNombre").attr("style", "color:green");
            rnombre = true;
        }
         if(!expApellido.test(apellido)){
            $(".errorApellido").html("El campo apellido solo acepta caracteres,  minimo 4");
                rapellido = false;
                return false;
    } else {
            $(".errorApellido").html("Campo validado");
            $(".errorApellido").attr("style", "color:green");
            rapellido = true;
        }if(!expUsername.test(username)){
            $(".errorUsername").html("Error el campo usuario acepta letras, numeros, guion y guion bajo, minimo 4 caracteres");
               rusername = false;
               return false;
    } else {
            $(".errorUsername").html("");
           rusername = true;
            $(".errorUsername").html("Usuario valido");
             $(".errorUsername").attr("style", "color:green");
        }if(!expPass.test(pass1)){
            $(".errorpass").html("La clave acepta de 6 a 12 digitos,pueden ser numeros, signos especiales y letras");
               rpass = false;
               return false;
    } else {
            $(".errorpass").html("Contraseña valida");
             $(".errorpass").attr("style", "color:green");
           rpass = true;
        }if(!expCorreo.test(correo)){
            $(".errorCorreo").html("El formato del correo no es valida");
               rcorreo = false;
               return false;
    } else {
            $(".errorCorreo").html("Correo valido");
            $(".errorCorreo").attr("style", "color:green");
           rcorreo = true;
        }

 }
 
    if (rpass1 == true && rpass2 == true) {
        rpassAp = true;
    }

    var retorno = false;
    if (rnombre == true && rapellido == true) {
        retorno = true;
    }
    return retorno;
}

   //VALIDANDO QUE LAS CONTRASEÑAS SEAN IGUALES

   $("#pass1").keyup(function() {
    var p1 = $("#pass1").val();
    var p2 = $("#pass2").val();
    $(".errorPass2").attr("style", "color:red");
    if (p1 != "" && p2 != "") {
        if (p1 == p2) {
            $(".errorPass2").html("Contraseñas coinciden");
            $(".errorPass2").attr("style", "color:green");
        } else {
            $(".errorPass2").html("Contraseñas no coinciden");
        }
    }

});
$("#pass2").keyup(function() {
    var p1 = $("#pass1").val();
    var p2 = $("#pass2").val();
    $(".errorPass2").attr("style", "color:red");
    if (p1 != "" && p2 != "") {

        if (p1 == p2) {
            $(".errorPass2").html("Contraseñas coinciden");
            $(".errorPass2").attr("style", "color:green");
        } else {
            $(".errorPass2").html("Contraseñas no coinciden");
            return false;
        }
    }

});


const inhabilitar = (id) => {
    $.ajax({
        type: "POST",
        url: "Usuarios/Inhabilitar/" + id,
        success: function(response) {
            const json = JSON.parse(response);
            Swal.fire(
                json.titulo,
                json.mensaje,
                json.tipo
            )
            if (json.tipo == 'success') {
                // table.ajax.reload();
                location.reload();
            }
        },
        error: function(response) {
            console.log(response);
        }
    });
}
const habilitar = (id) => {
    $.ajax({
        type: "POST",
        url: "Usuarios/Habilitar/" + id,
        success: function(response) {
            const json = JSON.parse(response);
            Swal.fire(
                json.titulo,
                json.mensaje,
                json.tipo
            )
            if (json.tipo == 'success') {
                // table.ajax.reload();
                location.reload();
            }
        },
        error: function(response) {
            console.log(response);
        }
    });
}

