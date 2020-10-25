$(document).ready(function () {
    $("#btn").click(function () {

        $(".modal-title").html("Correo Electronico");
        $(".modal-footer").hide();
        $("#Modal").modal();
    });

});
function desplejarmodal(url, titulo) {
    $(".modal-body").load(url);
    $(".modal-title").html(titulo);
    $(".modal-footer").html("<input type='hidden' id='id' value='" + $('#id').val() + "'>");
    $("#Modal").modal();


}
function alertas_ajax(alerta) {
    if (alerta.Alerta === "simple") {
        Swal.fire({
            title: alerta.Titulo,
            text: alerta.Texto,
            type: alerta.Tipo,
            confirmButtonText: 'Aceptar'
        });
    } else if (alerta.Alerta === "recargar") {
        Swal.fire({
            title: alerta.Titulo,
            text: alerta.Texto,
            type: alerta.Tipo,
            confirmButtonText: 'Aceptar'
        }).then((result) => {
            if (result.value) {
                location.reload();
            }
        });
    } else if (alerta.Alerta === "limpiar") {
        Swal.fire({
            title: alerta.Titulo,
            text: alerta.Texto,
            type: alerta.Tipo,
            confirmButtonText: 'Aceptar'
        }).then((result) => {
            if (result.value) {
                document.querySelector(".FormularioAjax").reset();
            }
        });
    } else if (alerta.Alerta === "redireccionar") {
        window.location.href = alerta.URL;
    }
}