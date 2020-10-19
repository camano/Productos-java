<%-- 
    Document   : Nav
    Created on : 17-oct-2020, 10:48:18
    Author     : jonathan
--%>
<div class="bg-light border-right" id="sidebar-wrapper">
    <div class="sidebar-heading">Java </div>
    <div class="list-group list-group-flush">
        <a href="${pageContext.request.contextPath}/Administrador" class="list-group-item list-group-item-action bg-light">Administrador</a>
        <div class="collapse" id="collapseExample">
            <a href="" class="list-group-item list-group-item-action bg-light">Lista de Usuarios</a>
            <a href="" class="list-group-item list-group-item-action bg-light">Agregar Usuarios</a>
        </div>
        <a href="#" id="btn" class="list-group-item list-group-item-action bg-light">Productos</a>
        <a href="${pageContext.request.contextPath}/listarusuarios" class="list-group-item list-group-item-action bg-light">Requerimientos</a>
        <input type="submit" onclick="eliminarusuario(1);"  value="l">
        <input type="submit" id="btn"  value="l">
    </div>
</div>