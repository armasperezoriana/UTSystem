$.ajax({
    type:"POST",
   // url:"../controllers/source/esteganografia/desencriptarAllImg.php",
    data:{"usuario":document.getElementById("user").value}
}).done(function(result){
    console.log(result);
     var separado= result.split("-");
     var content="<br>Imagen de seguridad:<br><img src='../public/img/securityEncripted/"+separado[1]+"' style='width:50%;border-radius:20px;'><br><br>";
     content+="Palabra de seguridad: <h3>"+separado[0]+"</h3><br>";
     document.getElementById("show_results").innerHTML=content;
     document.getElementById("img_actual").value=separado[1];
});



document.getElementById("btn_editar").onclick=function(){
    if(document.getElementById("btn_editar").innerHTML=="Modificar"){
        document.getElementById("btn_editar").innerHTML="Volver";
        $("#show_results").hide(1000);
        $("#nuevo").show(1000);
    }
    else{
        document.getElementById("btn_editar").innerHTML="Modificar";
        $("#nuevo").hide(1000);
        $("#show_results").show(1000);
    }
}



