{
    if (!empty($_POST['username']) || !empty($_POST['pass'])) {
        $username = $_POST['username'];
        $pass= $_POST['pass'];
         $this->usuario->setPassword($pass);
        //Agregar un Consultar para ver si existe el registro; 
        $result = $this->login->usuario_sesion($username);
        $this->usuario->ConsultarUsuarioId();
        $this->usuario->setUsername($username);
        //$response = $this->usuario->buscarID($id);
    
        // if ($result['ejecucion'] == true) {
        // 	// if($_SESSION['status'] != '1'){
        // 	//     echo json_encode([
        // 	//         'titulo' => '¡Usuario Bloqueado!',
        // 	//         'mensaje' => 'El Usuario se encuentra bloqueado',
        // 	//         'tipo' => 'error',
        // 	//     ]);
        // 	//     return false;
        // 	}
            if(isset($_SESSION['sesion_fallos_iniciar_tiempo'])){
                $tiempo = time();
                $tiempo_transcurrido = $tiempo - $_SESSION['sesion_fallos_iniciar_tiempo'];
                $tiempo_limite = 60 * 60 * 12;
                if($tiempo_transcurrido > $tiempo_limite){
                    $_SESSION['sesion_fallos_iniciar'] = null;
                }
            }
            if(isset($_SESSION['sesion_fallos_iniciar']["$username"])){
                $_SESSION['sesion_fallos_iniciar']["$username"] += 1;
            }
            else{
                $_SESSION['sesion_fallos_iniciar']["$username"] = 1;
                $_SESSION['sesion_fallos_iniciar_tiempo'] = time();
            }
            $fallos = $_SESSION['sesion_fallos_iniciar']["$username"];
            if($fallos >= 3){
                session_destroy();
            
                $this->usuario->eliminar();
                $mensaje = "La Contraseña ingresada es incorrecta. <br>El Usuario ha sido bloqueado.";
            }
            else{
                $mensaje = "La Contraseña ingresada es incorrecta. <br>Intento fallido número $fallos. <br>Al tercer intento fallido se bloqueará su Usuario.";
            }
            echo json_encode([
                'titulo' => '¡Contraseña incorrecta!',
                'mensaje' => $mensaje,
                'tipo' => 'error',
                'fallos' => $fallos
            ]);
            return false;
        }
                // if(password_verify($pass, $res['contrasena'])){
                // 	$resultP = $this->usuario->ObtenerPermisos($res['rol']);
                // 	$permisos = $res['resultado'];
                    $_SESSION['ut_usuario'] = $result['usuario'];
                    $_SESSION['ut_id'] = $result['id_usuario'];
                    $_SESSION['ut_rol'] = $result['rol'];
                    $_SESSION['ut_nombre'] = $result['nombre'];
                    $_SESSION['ut_apellido'] = $result['apellido'];
                    $_SESSION['ut_cedula'] = $result['cedula'];
                    $_SESSION['ut_correo'] = $result['correo'];
                    $_SESSION['ut_permisos'] = $permisos;
                    echo json_encode([
                        'tipo' => 'success', 'mensaje' => 'Sesión Iniciada'
                    ]); 
                }
    // 			 else {
    // 			echo json_encode([
    // 				'titulo' => '¡Usuario incorrecto!',
    // 				'mensaje' => 'Por favor verifique el usuario',
    // 				'tipo' => 'error',
    // 			]);
    // 		}
    // }