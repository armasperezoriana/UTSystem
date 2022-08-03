         $('body').on('click', '.inhabilitarOrden', function(e) {
            e.preventDefault();

            Swal.fire({
                title: '¿Desea cambiar el estado de la orden de servicio?',
                text: "El estado del mantenimiento cambiara su estado a: en proceso",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                cancelButtonText: 'Cancelar',
                confirmButtonText: 'Si, cambiar!'
            }).then((result) => {
                if (result.value) {
                    inhabilitarOrden($(this).attr('data-id'));
                }
            })
        });
     

     const inhabilitarOrden = (id) => {
        $.ajax({
            type: "POST",
            url: "notificaciones/InhabilitarOrden/" + id,
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
     const habilitarOrden = (id) => {
        $.ajax({
            type: "POST",
            url: "notificaciones/Habilitar/" + id,
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
        // Habilitar alerta
        $('body').on('click', '.habilitar', function(e) {
            e.preventDefault();

            Swal.fire({
                title: '¿Desea cambiar el estado de la orden de servicio?',
                text: "El estado de la orden de servicio cambiara en el en el sistema a: Generada",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                cancelButtonText: 'Cancelar',
                confirmButtonText: 'Si!'
            }).then((result) => {
                if (result.value) {
                    habilitarOrden($(this).attr('data-id'));
                }
            })
        });



