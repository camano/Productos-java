/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {

    listarusuario();
});

function listarusuario() {
    $.ajax({
        url: "usuarioControlador",
       success:function(e){
           var html="";
            for (var i = 0; i < e.length; i++) {
                html+="<h5>"+e[i].usuarioNombre+"</h5>";
            }
            $('#listar').html(html);
       }
    });
}