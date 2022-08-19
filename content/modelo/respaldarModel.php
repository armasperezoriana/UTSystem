<?php

	namespace content\modelo;

	use content\config\conection\database as database;

	class respaldarModel extends database{

		private $con;

		public function __construct(){
			$this->con = parent::__construct();
		}

        
      /**
         * LIMPIAR DATOS
         */
        public function limpiaCadena($cadena)
        {
            $cadena = trim($cadena); //Elimina espacios al inicio y al final de la cadena
            $cadena = stripcslashes($cadena); //Elimina Barras Invertidas de la cadena
            $cadena = str_replace('<script>', '', $cadena);
            $cadena = str_replace('</script>', '', $cadena);
            $cadena = str_replace('<script src', '', $cadena);
            $cadena = str_replace('<script type', '', $cadena);
            $cadena = str_replace('SELECT * FROM', '', $cadena);
            $cadena = str_replace('DELETE FROM', '', $cadena);
            $cadena = str_replace('INSERT INTO', '', $cadena);
            $cadena = str_replace('--', '', $cadena);
            $cadena = str_replace('^', '', $cadena);
            $cadena = str_replace('(', '', $cadena);
            $cadena = str_replace(')', '', $cadena);
            $cadena = str_replace('[', '', $cadena);
            $cadena = str_replace(']', '', $cadena);
            $cadena = str_replace('{', '', $cadena);
            $cadena = str_replace('}', '', $cadena);
            $cadena = str_replace('==', '', $cadena);
    
            return $cadena;
        }
        public function respaldar()
        {
            $method = $_SERVER['REQUEST_METHOD'];
    
            if( $method != 'POST'){
                http_response_code(404);
                return false;
            }
            $dir = "../assets/respaldo/";
            $day=date("d");
            $mont=date("m");
            $year=date("Y");
            $hora=date("H-i-s");
            $fecha=$day.'_'.$mont.'_'.$year;
            $errores = false;
            $con=mysqli_connect(SERVER, USER, PASS, BD);
            $r = $con->query("SELECT NOW() AS f_actual");
            $a = $r->fetch_assoc();
            $fechaA = $a['f_actual'];
            
            $DataBASE=$fecha."_(".$hora."_hrs).sql";
            $error = 0;
            $tables=array();
            $triggers=array();
            // $result=SGBD::sql('SHOW TABLES');
            $result=mysqli_query($con, 'SET CHARACTER SET utf8');
            $result=mysqli_query($con, 'SHOW TABLES');
            
            $sql='SET FOREIGN_KEY_CHECKS=0;'."\nSET @usuario_id=1;\n\n";
            $sql.= "SET CHARACTER SET utf8; \n";
                // $sql.='CREATE DATABASE IF NOT EXISTS '.BD.";\n\n";
                // $sql.='USE '.BD.";\n\n";
            
    
            if($result){
                while($row=mysqli_fetch_row($result)){
                $tables[] = $row[0];
                }
                foreach($tables as $table){
                    if($table[0]=='v' && $table[1]=="_"){
                        $sql.="\n";
                    }else{
                        $result=mysqli_query($con,'SELECT * FROM '.$table);
                        if($result){
                            $numFields=mysqli_num_fields($result);
                            $sql.='TRUNCATE TABLE '.$table.';';
                            // $row2=mysqli_fetch_row(SGBD::sql('SHOW CREATE TABLE '.$table));
                            // $sql.="\n\n".$row2[1].";\n\n";
                            $sql.="\n";
                            for ($i=0; $i < $numFields; $i++){
                                while($row=mysqli_fetch_row($result)){
                                    $sql.='INSERT INTO '.$table.' VALUES(';
                                    for($j=0; $j<$numFields; $j++){
                                        $row[$j]=addslashes($row[$j]);
                                        $row[$j]=str_replace("\n","\\n",$row[$j]);
                                        if (isset($row[$j])){
                                            $sql .= '"'.$row[$j].'"' ;
                                        }
                                        else{
                                            $sql.= '""';
                                        }
                                        if ($j < ($numFields-1)){
                                            $sql .= ',';
                                        }
                                    }
                                    $sql.= ");\n";
                                }
                            }
                            $sql.="\n\n\n";
                        }else{
                            $error=1;
                        }
                    }
                }
                if($error==1){
                    $errores = true;
                }else{
                    chmod($dir, 0777);
                    $sql.='SET FOREIGN_KEY_CHECKS=1;';
                    $sql.="\n";
                    $sql.='DELETE FROM bitacora WHERE fecha > "'.$fechaA.'";';
                    $handle=fopen($dir.$DataBASE,'w+');
                    if(fwrite($handle, $sql)){
                        fclose($handle);
                        
                    }else{
                        $errores = true;
                    }
                }
            }else{
                $errores = true;
            }
            mysqli_free_result($result);
            if (!$errores) {
                echo json_encode([
                    'success' => true,
                    'file' => ROOT.$dir.$DataBASE
                ]);
                return 0;
            }
            else{
                echo 'Ocurrio un error inesperado al crear la copia de seguridad';
                echo json_encode([
                    'success' => false,
                    'message' => 'Ocurrió un error inesperado al crear la copia de seguridad'
                ]);
            }
        }
        public function restaurar()
        {
            $method = $_SERVER['REQUEST_METHOD'];
    
            if( $method != 'POST'){
                http_response_code(404);
                return false;
            }
            $restorePoint=$this->limpiaCadena($_POST['respaldo']);
            $restorePoint=$_POST['respaldo'];
            $sql=explode(";",file_get_contents($restorePoint));
            $totalErrors=0;
            set_time_limit (300);
            $con=mysqli_connect(SERVER, USER, PASS, BD);
            $con->query("SET FOREIGN_KEY_CHECKS=0");
            for($i = 0; $i < (count($sql)-1); $i++){
                if(!$con->query($sql[$i].";")){
                    // echo $con->error." $sql[$i]<br> --- <br>";
                    $totalErrors++;
                }
            }
            $con->query("SET FOREIGN_KEY_CHECKS=1");
            $con->close();
            if($totalErrors<=0){
                echo json_encode([
                    'success' => true
                ]);
                return 0;
            }else{
                echo json_encode([
                    'success' => false,
                    'mensaje' => "No se pudo realizar la restauración completamente.<br>
                                    Total de errores: $totalErrors"
                ]);
                return 0;
            }
            echo json_encode([
                'success' => true
            ]);
            return 0;
        }
    

	}

?>