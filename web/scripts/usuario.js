$(document).ready(function () {
    listarusuario();
   
});


function listarusuario() {
    $.ajax({
        url: "listarusuarios",
    }).done(function (e) {
        $('#listar').html(e);
    });
}

function EditarUsuario() {
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
                url: "editarusuario",
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

function ConsultarUsuario(url, titulo) {
    desplejarmodal(url, titulo);
    $.ajax({
        url: "consultarusuario",
        method: "post",
        data: {idusuario: $('#id').val()},
        success: function (e) {
           $('#usuarioNombre').val(e.usuarioNombre);
           $('#usuarioTelefono').val(e.usuarioTelefono);
           $('#usuarioCorreo').val(e.usuarioCorreo);
        }
    });
    
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