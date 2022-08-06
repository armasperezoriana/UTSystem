<div class="tabla">
<div>
    <br>
    <label id='imgSelecciona'>Seleccione o suba una imagen</label>
    <br>

    <table border="2px black" div="imagenes" style="width:100%">
        <tbody id='tbody1'>
            <tr>
                <th style="width:50%"><img
                        src="assets/img/seguridad/1.png"
                        class="img-profile" width="100%"></th>
                <th style="width:50%"><img
                        onclick="change(this,'2')"
                        class="imageStyle"
                        src="assets/img/seguridad/2.png"
                        width="100%" id='img3'></th>
                <th style="width:50%"><img
                        onclick="change(this,'2')"
                        class="imageStyle"
                        src="assets/img/seguridad/3.png"
                        width="100%" id='img4'></th>
                <th style="width:50%"><img
                        onclick="change(this,'2')"
                        class="imageStyle"
                        src="assets/img/seguridad/4.png"
                        width="100%" id='img4'></th>
            </tr>
        </tbody>
        <tbody id='tbody2' style='display:none'>
            <tr>
                <th>
                    <center>
                        <input type="file" onchange="loadImg(event)"
                            class='form-control' id='imagen'
                            name="imagen">
                    </center>
                </th>
                <th>
                    <div style="width:70vh;height:200px;background: gray;border-radius: 8px;"
                        id="displayedImg"><br>Imagen</div>
                </th>
            </tr>
        </tbody>

    </table>

    <br>
    <center> <button type='button' id='subirImg'
            class='btnSubir'>Subir imagen</button></center>
    <br>
    <center><button type='button' class='btnEnviar'
            id='enviar'>Enviar</button></center>
    <br>
</div>