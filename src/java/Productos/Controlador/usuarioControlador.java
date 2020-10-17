/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Productos.Controlador;

import Productos.Persistencia.Dao.UsuarioDao;
import Productos.Persistencia.Vo.usuario;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jonathan
 */
public class usuarioControlador extends HttpServlet {

    UsuarioDao usuariodao = new UsuarioDao();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String url = request.getServletPath();
        switch (url) {
                case "/Api/listarusuarios":
                Gson json = new Gson();
                String gson = "";
                String enu = "";
                PrintWriter out = null;
                List<usuario> lista = usuariodao.listarusuario();
                gson = json.toJson(lista);
                response.setContentType("application/json");
                out = response.getWriter();
                out.print(gson);
                out.flush();
                break;
            case "/listarusuarios":
                listarusuarios(response, request);
                break;
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void listarusuarios(HttpServletResponse response, HttpServletRequest request) {
  
        List<usuario> lista = usuariodao.listarusuario();
        try (PrintWriter out = response.getWriter()) {
            for (int i = 0; i < lista.size(); i++) {
                out.println("<h4>"+lista.get(i).getUsuarioNombre()+"</h4>");
            }
        } catch (Exception e) {

        }
    }

}
