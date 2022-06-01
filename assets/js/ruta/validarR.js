 $(document).ready(function() {

        $(".EnviarRutaRegistrar").click(function() {
            // var namemodal = $(this).attr("id");
            var valido = validar();
            if (valido == true) {

                var placa = $(".AgregarRutaModal").find(".placa").val();                
                var direccion_ruta = $(".AgregarRutaModal").find(".direccion_ruta").val();
                var nombre_ruta =$(".AgregarRutaModal").find(".nombre_ruta").val();
                var hora_salida = $(".AgregarRutaModal").find(".hora_salida").val();
                var kilometraje = $(".AgregarRutaModal").find(".kilometraje").val();


                 // console.log("hay datos enviados");
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
                            url: './Ruta/Registrar',
                            type: 'POST',
                            data: {
                                placa: placa,
                                direccion_ruta: direccion_ruta,
                                nombre_ruta: nombre_ruta,
                                hora_salida: hora_salida,
                                kilometraje: kilometraje,
                            },
                            success: function(respuesta) {
                                // alert(respuesta);
                                if (respuesta == "1") {
                                    swal.fire({
                                        type: 'success',
                                        title: 'Registro guardado exitosamente',
                                    }).then((isConfirm) => {
                                        location.href = './ruta';
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

        $(".EnviarRutaEditar").click(function() {
            var id = $(this).attr("id");
            var valido = validar(true, id);
            if (valido == true) {
                var placa = $(".EditarRutaModal").find(".placa"+id).val();                
                var direccion_ruta = $(".EditarRutaModal").find(".direccion_ruta"+id).val();
                var nombre_ruta = $(".EditarRutaModal").find(".nombre_ruta"+id).val();;
                var hora_salida = $(".EditarRutaModal").find(".hora_salida"+id).val();
                var kilometraje = $(".EditarRutaModal").find(".kilometraje"+id).val();

                 // console.log("hay datos enviados");
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
                            url: './ruta/Modificar',
                            type: 'POST',
                            data: {
                                id_ruta: id,
                                placa: placa,
                                direccion_ruta: direccion_ruta,
                                nombre_ruta: nombre_ruta,
                                hora_salida: hora_salida,
                                kilometraje: kilometraje,
                            },
                            success: function(respuesta) {
                                if (respuesta == "1") {
                                    swal.fire({
                                        type: 'success',
                                        title: 'Registro guardado exitosamente',
                                    }).then((isConfirm) => {
                                        location.href = './ruta';
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

        function validar(modificar = false, id = "") {
            // alert(namemodal);
            var namemodal = "";
            if(!modificar){
                namemodal = ".AgregarRutaModal";
            }
            else{
                namemodal = ".EditarRutaModal";
            }
            var nombre_ruta = $(namemodal+" .nombre_ruta"+id).val();
            var rnombre_ruta = false;

            var direccion_ruta = $(namemodal+" .direccion_ruta"+id).val();
            var rdireccion_ruta = false;

            var hora_salida = $(namemodal+" .hora_salida"+id).val();
            var rhora_salida = false;

            var placa = $(namemodal+" .placa"+id).val();
            var rplaca = false;

            if (nombre_ruta == "") {
                rnombre_ruta = false;
                $(namemodal+" .errorNombre").html("Debe ingresar el nombre de la ruta");
            } else {
                rnombre_ruta = true;
                $(namemodal+" .errorNombre").html("");
            }

            if (placa == "") {
                rplaca = false;
                $(namemodal+" .errorPlaca").html("Debe elegir su placa");
            } else {
                $(namemodal+" .errorPlaca").html("");
                rplaca = true;
            }

            if (hora_salida == "") {
                rhora_salida = false;
                $(namemodal+" .errorHora").html("Debe elegir la hora de salida");
            } else {
                $(namemodal+" .errorHora").html("");
                rhora_salida = true;
            }

            if (direccion_ruta == "") {
                rdireccion_ruta = false;
                $(namemodal+" .errorDireccion").html("Debe ingresar su direccion");
            } else {
                $(namemodal+" .errorDireccion").html("");
                rdireccion_ruta = true;
            }

            if(rnombre_ruta==true && rplaca==true && rhora_salida==true && rdireccion_ruta==true){
                return true;
            }else{
                return false;
            }

        }


                // Inhabilitar Chofer
        $('body').on('click', '.inhabilitar', function(e) {
            e.preventDefault();

            Swal.fire({
                title: '¿Está Seguro?',
                text: "La ruta sera eliminada del sistema",
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
                text: "La ruta será habilitada en el sistema",
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

    const inhabilitar = (id) => {
        $.ajax({
            type: "POST",
            url: "ruta/Inhabilitar/" + id,
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
            url: "ruta/Habilitar/" + id,
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

    
