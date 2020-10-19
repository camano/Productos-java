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
            <jsp:include page="Complementos/Nav.jsp"></jsp:include>
                <!-- /#sidebar-wrapper -->
                <!-- Page Content -->
                <div id="page-content-wrapper">
                <jsp:include page="Complementos/Navbar.jsp"></jsp:include>
                    <!-- /#page-content-wrapper -->
                    <div id="contenido">
                        <div class="container">
                            <h1 class="mt-4" id="titulo">Control de Requerimientos</h1>
                            <p>The starting state of the menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will change.</p>
                            <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>. The top navbar is optional, and just for demonstration. Just create an element with the <code>#menu-toggle</code> ID which will toggle the menu when clicked.</p>
                        </div>
                        <div id="list"></div>
                    </div>
                </div>
            </div>
        </body>
    <jsp:include page="Complementos/LinksJS.jsp"></jsp:include>

</html>