$(document).ready(function () {
    $("#btn").click(function () {
        
        $(".modal-title").html("Correo Electronico");
        $(".modal-footer").hide();
        $("#Modal").modal();
    });

});



function desplejarmodal(url,titulo){
    $(".modal-body").load(url);
    $(".modal-title").html(titulo);
    $(".modal-footer").html("<input type='hidden' id='id' value='"+$('#id').val()+"'>");
    $("#Modal").modal();
    
    
}