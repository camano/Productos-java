function ListarUsuario() {
    $.ajax({
        url: "Api/listarusuarios",
        success: function (e) {
            var html = "";
            var html2 = "";
            var cont = 1;
            for (var i = 0; i < e.length; i++) {
                html = "<tr>";
                html += "<th scope=\"row\">" + cont + "</th>";
                html += "<td>" + e[i].usuarioNombre + "</td>";
                html += "<td>" + e[i].usuarioTelefono + "</td>";
                html += "<td>" + e[i].usuarioCorreo + "</td>";
                html += "<td></td>";
                html += "<td><input type=\"button\" id='btnEditarUsuario' class=\"btn btn-warning\" value='Editar'></td>";
                html += "<td><button type=\"button\" id='btnEliminarUsuario' class=\"btn btn-danger form-group\">Eliminar</button></td>";
                html += "</tr>";
                cont++;
                html2 += html;
            }
            $('#listar').html(html2);
            
        }
    });
}

$(document).ready(function () {
    ListarUsuario();
    $('#btnEditarUsuario').click(function () {
        alert('btneditar');
    });
    $('#btnEliminarUsuario').click(function () {
        alert("btneliminar");
    });

});