  $(document).ready(function() {

        $(".EnviarChoferRegistrar").click(function() {
            var valido = validar();
            if (valido == true) {

                var nombre = $("#AgregarChoferModal").find("#nombre").val();                
                var apellido = $("#AgregarChoferModal").find("#apellido").val();
                var cedula =$("#AgregarChoferModal").find("#cedula").val();;
                var telefono = $("#AgregarChoferModal").find("#telefono").val();
                var placa = $("#AgregarChoferModal").find("#placa").val();
                // alert(nombre);
                // alert(apellido);
                // alert(cedula);
                // alert(telefono);
                // alert(placa);
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
                            url: './choferes/Registrar',
                            type: 'POST',
                            data: {
                                nombre: nombre,
                                apellido: apellido,
                                cedula: cedula,
                                telefono: telefono,
                                placa: placa,
                            },
                            success: function(respuesta) {
                                // alert(respuesta);
                                if (respuesta == "1") {
                                    swal.fire({
                                        type: 'success',
                                        title: 'Registro guardado exitosamente',
                                    }).then((isConfirm) => {
                                        location.href = './choferes';
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

        $(".ModificarChofer").click(function() {
            var valido = validar(true);
            if (valido == true) {

                // var id_choferes = $("#modificarChofer").find("#id_choferes").val();
                var id_choferes = $(this).attr("id");

                var nombre = $(".ModificarChoferModal").find(".nombre"+id_choferes).val();
                var apellido = $(".ModificarChoferModal").find(".apellido"+id_choferes).val();
                var cedula =$(".ModificarChoferModal").find(".cedula"+id_choferes).val();;
                var telefono = $(".ModificarChoferModal").find(".telefono"+id_choferes).val();
                var placa = $(".ModificarChoferModal").find(".placa"+id_choferes).val();
               
                swal.fire({
                    title: "¿Desea modificar los datos ingresados?",
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
                            url: './choferes/Modificar',
                            type: 'POST',
                            data: {
                                id_choferes: id_choferes,
                                nombre: nombre,
                                apellido: apellido,
                                cedula: cedula,
                                telefono: telefono,
                                placa: placa,
                            },
                            success: function(respuesta) {
                                // alert(respuesta);
                                if (respuesta == "1") {
                                    swal.fire({
                                        type: 'success',
                                        title: 'Registro modificado exitosamente',
                                    }).then((isConfirm) => {
                                        location.href = './choferes';
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
            mostrar($(this).attr('data-id'), "#modificarChofer", "#ModificarChoferModal");
        })
        $('.consultar').click(function(e){
            e.preventDefault();
            mostrar($(this).attr('data-id'), "#consultarChofer", "#ConsultarChoferModal");
        })


        // Inhabilitar Chofer
        $('body').on('click', '.inhabilitar', function(e) {
            e.preventDefault();

            Swal.fire({
                title: '¿Está Seguro?',
                text: "El chofer sera eliminado del sistema",
                type: 'question',
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
        // Habilitar Chofer
        $('body').on('click', '.habilitar', function(e) {
            e.preventDefault();

            Swal.fire({
                title: '¿Está Seguro?',
                text: "El chofer será habilitado en el sistema",
                type: 'question',
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


    function validar(modificar = false) {
        var form = "";
        if(!modificar){
            form = "#AgregarChoferModal";
        }
        else{
            form = "#modificarChofer";
        }
        var expNombre = /^[A-Za-z]{3,50}$/;
        var nombre = $(form).find("#nombre").val();
        var rnombre = false;

        var apellido = $(form).find("#apellido").val();
        var rapellido = false;

        var cedula = $(form).find("#cedula").val();
        var rcedula = false;

        var telefono = $(form).find("#telefono").val();
        var rtelefono = false;

        var placa = $(form).find("#placa").val();
        var rplaca = false;

       
        if (nombre == "") {
            rnombre = false;
            $(form).find(".errorNombre").html("Debe ingresar su nombre");
        } else {
            rnombre = true;
            $(form).find(".errorNombre").html("");
        }
        if (apellido == "") {
            rapellido = false;
            $(form).find(".errorApellido").html("Debe ingresar su apellido");
        } else {
            $(form).find(".errorApellido").html("");
            rapellido = true;
        }

        if (cedula == "") {
            rcedula = false;
            $(form).find(".errorCedula").html("Debe ingresar su cedula");
        } else {
            $(form).find(".errorCedula").html("");
            rcedula = true;
        }
        if (placa == "") {
            rplaca = false;
            $(form).find(".errorPlaca").html("Debe seleccionar su placa");
        } else {
            $(form).find(".errorPlaca").html("");
            rplaca = true;
        }
        if (telefono == "") {
            rtelefono = false;
            $(form).find(".errortelefono").html("Debe seleccionar su telefono");
        } else {
            $(form).find(".errortelefono").html("");
            rtelefono = true;
        }

        if(rnombre==true && rapellido==true && rcedula==true && rplaca==true && rtelefono==true){
            return true;
        }else{
            return false;
        }
    }

    const mostrar = (id, formulario, modal) => {
        $.ajax({
            type: "POST",
            url: "Chofer/Mostrar/"+id,
            success: function (response) {
                let json = JSON.parse(response);
                let chofer = json.data; 
                $(formulario).find("#id_choferes").val(chofer.id_choferes);
                $(formulario).find("#nombre").val(chofer.nombre);
                $(formulario).find("#apellido").val(chofer.apellido);
                $(formulario).find("#telefono").val(chofer.telefono);
                $(formulario).find("#cedula").val(chofer.cedula);
                $(formulario).find("#telefono").val(chofer.telefono);
                $(modal).modal('show');
            },
            error: function (response) {
                console.log(response.getAllResponseHeaders())
            }
        });
    }
    const inhabilitar = (id) => {
        $.ajax({
            type: "POST",
            url: "choferes/Inhabilitar/" + id,
            success: function(response) {
                const json = JSON.parse(response);
                Swal.fire(
                    json.titulo,
                    json.mensaje,
                    json.tipo
                ).then((isConfirm) => {
                    if (json.tipo == 'success') {
                        location.reload();
                    }
                });
            },
            error: function(response) {
                console.log(response);
            }
        });
    }
    const habilitar = (id) => {
        $.ajax({
            type: "POST",
            url: "choferes/Habilitar/" + id,
            success: function(response) {
                const json = JSON.parse(response);
                Swal.fire(
                    json.titulo,
                    json.mensaje,
                    json.tipo
                ).then((isConfirm) => {
                    if (json.tipo == 'success') {
                        location.reload();
                    }
                });
            },
            error: function(response) {
                console.log(response);
            }
        });
    }

   
});
