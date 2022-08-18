$(document).ready(function() {
    $("#recuperar").on("submit", function (e) {
        e.preventDefault();
        //let data = new FormData(this);
        $.ajax({
          type: "POST",
          url: "login/recuperarClave",
          cache: false,
         // data: data,
          contentType: false,
          processData: false,
          success: function (response) {
            let res = JSON.parse(response);
            if (res.tipo == 'danger') {
              window.location.reload();
            }
            else {
              Swal.fire(
                res.titulo,
                res.mensaje,
                res.tipo
              );
            }
          },
          error: (response) => {
            console.log(response);
            Swal.fire("¡Error!", "Ocurrió un problema al verificar su correo", "error");
          },
        });
        Toast.fire({
          title: 'Espere!',
          html: 'Se estan verificando los datos con los registrados en el sistema',// add html attribute if you want or remove
          allowOutsideClick: false,
          onBeforeOpen: () => {
            Swal.showLoading()
          },
        });
      });
      const Toast = Swal.mixin({
        toast: true,
        position: 'bottom-start',
        showConfirmButton: false,
      });
  });
  