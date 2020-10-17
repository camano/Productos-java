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
    <jsp:include page="Complementos/LinksCSS.jsp"></jsp:include>
</head>

<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div class="bg-light border-right" id="sidebar-wrapper">
            <div class="sidebar-heading">Coopidrogas </div>
            <div class="list-group list-group-flush">
                <a href="" class="list-group-item list-group-item-action bg-light">Administrador</a>
                <div class="collapse" id="collapseExample">
                    <a href="" class="list-group-item list-group-item-action bg-light">Lista de Usuarios</a>
                    <a href="" class="list-group-item list-group-item-action bg-light">Agregar Usuarios</a>
                </div>
                <a href="" class="list-group-item list-group-item-action bg-light">Productos</a>
                <a href="" class="list-group-item list-group-item-action bg-light">Requerimientos</a>
            </div>
        </div>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div id="page-content-wrapper">

                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <button class="btn btn-primary" id="menu-toggle">Menú</button>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                            <li class="nav-item active">
                                <a class="nav-link" href="">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle btnsalir" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>


            </div>
            <!-- /#page-content-wrapper -->
            <div class="container">
                <h1 class="mt-4">Control de Requerimientos</h1>
                <p>The starting state of the menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will change.</p>
                <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>. The top navbar is optional, and just for demonstration. Just create an element with the <code>#menu-toggle</code> ID which will toggle the menu when clicked.</p>
                <div id="listar"></div>

            </div>
        </div>
    </div>
</body>
<jsp:include page="Complementos/LinksJS.jsp"></jsp:include>

</html>