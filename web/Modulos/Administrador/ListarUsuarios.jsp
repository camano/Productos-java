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
            <div class="d-flex" id="wrapper">
                <!-- Sidebar -->
            <jsp:include page="../../Complementos/Nav.jsp"></jsp:include>
                <!-- /#sidebar-wrapper -->
                <!-- Page Content -->
                <div id="page-content-wrapper">
                <jsp:include page="../../Complementos/Navbar.jsp"></jsp:include>
                    <!-- /#page-content-wrapper -->
                    <div id="contenido">
                        <div class="container">
                           
                            <div id="listar"></div>
                           

                        </div>
                    </div>
                </div>
            </div>
        </body>
    <jsp:include page="../../Complementos/LinksJS.jsp"></jsp:include>

</html>