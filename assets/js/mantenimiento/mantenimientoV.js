$(document).ready(function () {

    $(".EnviarMantenimientoRegistrar").click(function () {
        // alert("asd");
        var valido = validar(modificar = false);
        if (valido == true) {
            var nombre = $("#AgregarMantenimientoModal").find("#nombre").val();
            var intervalo = $("#AgregarMantenimientoModal").find("#intervalo").val();
            var tipo = $("#AgregarMantenimientoModal").find("#tipo").val();
            var taller = $("#AgregarMantenimientoModal").find("#taller").val();
            var placa = $("#AgregarMantenimientoModal").find("#placa").val();
            var costo = $("#AgregarMantenimientoModal").find("#costo").val();
            var tiempo = $("#AgregarMantenimientoModal").find("#tiempo").val();

            // alert( nombre + ' ' + intervalo + ' ' + tipo + ' ' + taller + ' ' + placa + ' ' + costo + ' ' + tiempo + ' ' );
            swal.fire({
                title: "¿Desea guardar los datos del vehiculo ingresados?",
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
                        url: './mantenimiento/Registrar',
                        type: 'POST',
                        data: {
                            nombre: nombre,
                            intervalo: intervalo,
                            tipo: tipo,
                            taller: taller,
                            placa: placa,
                            costo: costo,
                            tiempo: tiempo,
                        },
                        success: function (respuesta) {
                            alert(respuesta);
                            if (respuesta == "1") {
                                swal.fire({
                                    type: 'success',
                                    title: 'Registro del mantenimiento guardado exitosamente',
                                }).then((isConfirm) => {
                                    location.href = './mantenimiento';
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
                                    title: 'Datos del vehiculo repetidos',
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
    // Modificar Vehiculo

    $(".EnviarMantenimientoModificar").click(function() {
        var id = $(this).attr("id");
        var valido = validar(true, id);
        if (valido == true) {

            var nombre = $("#ModificarMantenimientoModal"+id).find("#nombre").val();
            var intervalo = $("#ModificarMantenimientoModal"+id).find("#intervalo").val();
            var tipo = $("#ModificarMantenimientoModal"+id).find("#tipo").val();
            var taller = $("#ModificarMantenimientoModal"+id).find("#taller").val();
            var placa = $("#ModificarMantenimientoModal"+id).find("#placa").val();
            var costo = $("#ModificarMantenimientoModal"+id).find("#costo").val();
            var tiempo = $("#ModificarMantenimientoModal"+id).find("#tiempo").val();
            swal.fire({
                title: "¿Desea guardar los datos del mantenimiento que han sido modificados?",
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
                        url: './mantenimiento/Modificar',
                        type: 'POST',
                        data: {
                            id_mantenimiento: id,
                            nombre: nombre,
                            intervalo: intervalo,
                            tipo: tipo,
                            taller: taller,
                            placa: placa,
                            costo: costo,
                            tiempo: tiempo,
                        },
                        success: function(respuesta) {
                            // alert(respuesta);
                            if (respuesta == "1") {
                                swal.fire({
                                    type: 'success',
                                    title: 'Registro modificado exitosamente',
                                }).then((isConfirm) => {
                                    location.href = './mantenimiento';
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


    // Inhabilitar Vehiculo
    $('body').on('click', '.inhabilitar', function (e) {
        e.preventDefault();

        Swal.fire({
            title: '¿Está Seguro?',
            text: "El mantenimiento será eliminado del sistema",
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
    // Habilitar Vehiculo
    $('body').on('click', '.habilitar', function (e) {
        e.preventDefault();

        Swal.fire({
            title: '¿Está Seguro?',
            text: "El mantenimiento será habilitado en el sistema",
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


    function validar(modificar = false, id="") {
        var form = "";
        if (!modificar) {
            form = "#AgregarMantenimientoModal";
        }
        else {
            form = "#ModificarMantenimientoModal"+id;
        }

        var nombre = $(form).find("#nombre").val();
        var rnombre = false;

        var intervalo = $(form).find("#intervalo").val();
        var rintervalo = false;

        var tipo = $(form).find("#tipo").val();
        var rtipo = false;

        var taller = $(form).find("#taller").val();
        var rtaller = false;

        var placa = $(form).find("#placa").val();
        var rplaca = false;
        var patternPlaca = /^[\w]+$/i;

        var costo = $(form).find("#costo").val();
        var rcosto = false;

        var tiempo = $(form).find("#tiempo").val();
        var rtiempo = false;

        if (nombre == "") {
            rnombre = false;
            $(form+" .errorNombre").html("Debe ingresar el nombre del mantenimiento");
        } else {
            rnombre = true;
            $(form+" .errorNombre").html("");
        }
        if (intervalo == "") {
            rintervalo = false;
            $(form+" .errorIntervalo").html("Debe ingresar la fecha del ultimo mantenimiento");
        } else {
            rintervalo = true;
            $(form+" .errorIntervalo").html("");
        }
        if (tipo == "") {
            rtipo = false;
            $(form+" .errorTipo").html("Debe ingresar el tipo de mantenimiento");
        } else {
            rtipo = true;
            $(form+" .errorTipo").html("");
        }
        if (taller == "") {
            rtaller = false;
            $(form+" .errorTaller").html("Debe ingresar el taller del mantenimiento");
        } else {
            rtaller = true;
            $(form+" .errorTaller").html("");
        }
        if (placa == "") {
            rplaca = false;
            $(form+" .errorPlaca").html("Debe ingresar su placa");
        } else {
            rplaca = true;
            $(form+" .errorPlaca").html("");
        }
        if (costo == "") {
            rcosto = false;
            $(form+" .errorCosto").html("Debe ingresar el costo del mantenimiento");
        } else {
            rcosto = true;
            $(form+" .errorCosto").html("");
        }
        if (tiempo == "") {
            rtiempo = false;
            $(form+" .errorTiempo").html("Debe seleccionar meses para el proximo mantenimiento");
        } else {
            rtiempo = true;
            $(form+" .errorTiempo").html("");
        }
        var validado = false;
        
        if(rnombre == true && rintervalo == true && rtipo == true && rtaller == true && rplaca == true && rcosto == true && rtiempo == true){
            validado = true;
        }
        // alert(form+": "+validado);
        return validado;
    }

     $('.editar').click(function(e){
        console.log("1");
                e.preventDefault();
                mostrar($(this).attr('data-id'), "#modificarVehiculo", "#ModificarVehiculoModal");
            })
            $('.consultar').click(function(e){
                 
                e.preventDefault();
                mostrar($(this).attr('data-id'), "#consultarVehiculo", "#ConsultarVehiculoModal");
            })

      const mostrar = (id, formulario, modal) => {
            $.ajax({
                type: "POST",
                url: "Vehiculos/Mostrar/"+id,
                success: function (response) {
                    let json = JSON.parse(response);
                    let vehiculo = json.data;
                    $(formulario).find("#id_vehiculo").val(vehiculo.id_vehiculo);
                    $(formulario).find("#placaM").val(vehiculo.placa);
                    $(formulario).find("#modeloM").val(vehiculo.modelo);
                    $(formulario).find("#funcionamientoM").val(vehiculo.funcionamiento);
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
            url: "mantenimiento/Inhabilitar/" + id,
            success: function (response) {
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
            error: function (response) {
                console.log(response);
            }
        });
    }
    const habilitar = (id) => {
        $.ajax({
            type: "POST",
            url: "mantenimiento/Habilitar/" + id,
            success: function (response) {
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
            error: function (response) {
                console.log(response);
            }
        });
    }
});
