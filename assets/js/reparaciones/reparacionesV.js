$(document).ready(function () {

    $(".EnviarReparacionRegistrar").click(function () {
        var valido = validar(modificar = false);
        if (valido == true) {
            var nombre = $("#AgregarReparacionModal").find("#nombre").val();
            var intervalo = $("#AgregarReparacionModal").find("#intervalo").val();
            var taller = $("#AgregarReparacionModal").find("#taller").val();
            var placa = $("#AgregarReparacionModal").find("#placa").val();
            var costo = $("#AgregarReparacionModal").find("#costo").val();
            var descripcion = $("#AgregarReparacionModal").find("#descripcion").val();

            // alert( nombre + ' ' + intervalo + ' ' + taller + ' ' + placa + ' ' + costo + ' ' + descripcion + ' ' );
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
                        url: './reparaciones/Registrar',
                        type: 'POST',
                        data: {
                            nombre: nombre,
                            intervalo: intervalo,
                            taller: taller,
                            placa: placa,
                            costo: costo,
                            descripcion: descripcion,
                        },
                        success: function (respuesta) {
                            // alert(respuesta);
                            if (respuesta == "1") {
                                swal.fire({
                                    type: 'success',
                                    title: 'Registro guardado exitosamente',
                                }).then((isConfirm) => {
                                    location.href = './reparaciones';
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

    $(".EnviarReparacionesModificar").click(function() {
        var id = $(this).attr("id");
        var valido = validar(true, id);
        if (valido == true) {

            var nombre = $("#ModificarReparacionesModal"+id).find("#nombre").val();
            var intervalo = $("#ModificarReparacionesModal"+id).find("#intervalo").val();
            var taller = $("#ModificarReparacionesModal"+id).find("#taller").val();
            var placa = $("#ModificarReparacionesModal"+id).find("#placa").val();
            var costo = $("#ModificarReparacionesModal"+id).find("#costo").val();
            var descripcion = $("#ModificarReparacionesModal"+id).find("#descripcion").val();

            swal.fire({
                title: "¿Desea guardar los datos del vehiculo que han sido modificados?",
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
                        url: './Reparaciones/Modificar',
                        type: 'POST',
                        data: {
                            id_reparaciones: id,
                            nombre: nombre,
                            intervalo: intervalo,
                            taller: taller,
                            placa: placa,
                            costo: costo,
                            descripcion: descripcion,
                        },
                        success: function(respuesta) {
                            alert(respuesta);
                            if (respuesta == "1") {
                                swal.fire({
                                    type: 'success',
                                    title: 'Registro modificado exitosamente',
                                }).then((isConfirm) => {
                                    location.href = './reparaciones';
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
            text: "La reparacion será eliminada del sistema",
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
    // La reparacion
    $('body').on('click', '.habilitar', function (e) {
        e.preventDefault();

        Swal.fire({
            title: '¿Está Seguro?',
            text: "La reparacion será habilitada en el sistema",
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
            form = "#AgregarReparacionModal";
        }
        else {
            form = "#ModificarReparacionesModal"+id;
        }

        var nombre = $(form).find("#nombre").val();
        var rnombre = false;

        var intervalo = $(form).find("#intervalo").val();
        var rintervalo = false;

        var taller = $(form).find("#taller").val();
        var rtaller = false;

        var placa = $(form).find("#placa").val();
        var rplaca = false;
        var patternPlaca = /^[\w]+$/i;

        var costo = $(form).find("#costo").val();
        var rcosto = false;

        var descripcion = $(form).find("#descripcion").val();
        var rdescripcion = false;

        if (nombre == "") {
            rnombre = false;
            $(form+" .errorNombre").html("Debe ingresar el nombre de la reparacion");
        } else {
            rnombre = true;
            $(form+" .errorNombre").html("");
        }
        if (intervalo == "") {
            rintervalo = false;
            $(form+" .errorIntervalo").html("Debe ingresar la fecha de la ultima reparacion");
        } else {
            rintervalo = true;
            $(form+" .errorIntervalo").html("");
        }
        if (taller == "") {
            rtaller = false;
            $(form+" .errorTaller").html("Debe ingresar el taller de la reparacion");
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
            $(form+" .errorCosto").html("Debe ingresar el costo de la reparacion");
        } else {
            rcosto = true;
            $(form+" .errorCosto").html("");
        }
        if (descripcion == "") {
            rdescripcion = false;
            $(form+" .errorDescripcion").html("Agregar una descripcion a la reparacion");
        } else {
            rdescripcion = true;
            $(form+" .errorDescripcion").html("");
        }
        var validado = false;
        
        if(rnombre == true && rintervalo == true && rtaller == true && rplaca == true && rcosto == true && rdescripcion == true){
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
            url: "reparaciones/Inhabilitar/" + id,
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
            url: "reparaciones/Habilitar/" + id,
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
