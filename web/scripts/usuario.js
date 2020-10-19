$(document).ready(function () {
    listarusuario();
});

function listarusuariojson() {
    $.ajax({
        url: "Api/listarusuarios",
        success: function (e) {
            var html = "";
            for (var i = 0; i < e.length; i++) {
                html += "<h5>" + e[i].usuarioNombre + "</h5>";
            }
            $('#list').html(html);
        }
    });
}

function listarusuario() {
    $.ajax({
        url: "listarusuarios",
    }).done(function (e) {
        $('#listar').html(e);
    });
}

function EditarUsuario() {
    console.log($('#id').val());
}

function eliminarusuario(id) {
    Swal.fire({
        title: '¿Estás seguro?',
        text: "Seguro quiere Eliminar este usuario",
        type: 'question',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Aceptar',
        cancelButtonText: 'Cancelar'
    }).then((result) => {
        if (result.value) {
            $.ajax({
                url: "eliminarusuario",
                method: "post",
                data: {idusuario: id},
                success: function (e) {
                    Swal.fire({
                        title: e.titulo,
                        text: e.texto,
                        type: e.tipo,
                        confirmButtonText: 'Aceptar'
                    });
                    listarusuario();
                }
            });
        }
    });
}