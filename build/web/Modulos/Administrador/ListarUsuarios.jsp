<%-- 
    Document   : ListarUsuarios
    Created on : 17-oct-2020, 11:24:10
    Author     : jonathan
--%>

<%-- 
Document   : index
Created on : 15-oct-2020, 10:43:37
Author     : jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>plantilla</title>
        <jsp:include page="../../Complementos/LinksCSS.jsp"></jsp:include>
        </head>

        <body>
        <jsp:include page="../../Complementos/modal.jsp"></jsp:include>
            <div class="d-flex" id="wrapper">
                <!-- Sidebar -->
            <jsp:include page="../../Complementos/Nav.jsp"></jsp:include>
                <!-- /#sidebar-wrapper -->
                <!-- Page Content -->
                <div id="page-content-wrapper">
                <jsp:include page="../../Complementos/Navbar.jsp"></jsp:include>
                    <!-- /#page-content-wrapper -->
                    <div id="contenido">
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Telefono</th>
                                    <th scope="col">Correo</th>
                                    <th scope="col">Estado</th>
                                    <th scope="col">Rol</th>
                                    <th scope="col">Editar</th>
                                    <th scope="col">Eliminar</th>
                                </tr>
                            </thead>
                            <tbody id="listar"></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </body>
    <jsp:include page="../../Complementos/LinksJS.jsp"></jsp:include>

</html>