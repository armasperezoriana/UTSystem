$(document).ready(function() {
    $("#formLogin").on("submit", function (e) {
        e.preventDefault();
        let data = new FormData(this);
    
        $.ajax({
          type: "POST",
          url: "login/IniciarSesion",
          cache: false,
          data: data,
          contentType: false,
          processData: false,
          success: function (response) {
            let res = JSON.parse(response);
            if (res.tipo == 'success') {
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
            Swal.fire("¡Error!", "Ocurrió un problema al iniciar sesión ", "error");
          },
        });
        Toast.fire({
          title: 'Espere!',
          html: 'Los datos están siendo procesados',// add html attribute if you want or remove
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

$(document).ready(function(){

  $("recuperarClave").click(function() {
     
          var username = $("#recuperarClave").find("#usuario").val();                
          var pregunta = $("#recuperarClave").find("#pregunta").val();
          var respuesta =$("#recuperarClave").find("#respuesta").val();
         
          swal.fire({
              title: "¿Esta seguro de los datos ingresados?",
              text: "Estos datos serán comparados",
              type: "question",
              showCancelButton: true,
              // confirmButtonColor: "#DD6B55",
              confirmButtonText: "Guardar",
              cancelButtonText: "Cancelar",
              closeOnConfirm: false,
          }).then((isConfirm) => {
              if (isConfirm.value) {
                  $.ajax({
                      url: './Usuarios/Consultar',
                      type: 'POST',
                      data: {
                  
                          username: username,
                          pregunta: pregunta,
                          respuesta: respuesta,
                          
                      },
                      success: function(respuesta) {
                          console.log(respuesta);
                          if (respuesta == "1") {

                              document.getElementById('numerodos').style.color="aliceblue";
                              document.getElementById('numerodos').style.background="#3498DB";
                              document.getElementById('numerouno').style.color="#AAB7B8";
                              document.getElementById('numerouno').style.background="#154360";
                              document.getElementById('pasouno').style.display="none";
                              document.getElementById('pasodos').style.display="block";
                          // swal.fire({
                          //     type: 'success',
                          //     title: 'Registro guardado exitosamente',
                          // }).then((isConfirm) => {
                          //     location.href = './Usuarios';
                          // });

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

  function mostrarPassword() {
        var cambio = document.getElementById("pass");

        if (cambio.type == "password") {
            cambio.type = "text";
            $('.password').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
        } else {
            cambio.type = "password";
            $('.password').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
        }

      }

                                      function Mostrar(){
                                        document.getElementById("recuperar").style.display="block";
                                        document.getElementById("login").style.display="none";
                                      }
                                       function Ocultar(){
                                        document.getElementById("recuperar").style.display="none";
                                          document.getElementById("login").style.display="block";
                                      }
                                      