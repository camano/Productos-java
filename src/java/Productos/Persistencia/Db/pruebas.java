/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Productos.Persistencia.Db;

import Productos.Persistencia.Dao.UsuarioDao;
import Productos.Persistencia.Vo.rol;
import Productos.Persistencia.Vo.usuario;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author jonathan
 */
public class pruebas {
 
    public static void main(String[] args) throws SQLException {
        Conexion con= new Conexion();
        usuario usuario=new usuario();
        UsuarioDao usuariodao=new UsuarioDao();
        usuario.setUsuarioNombre("Jonathan");
        usuario.setUsuarioTelefono(313);
        usuario.setUsuarioCorreo("camanojhonatan@gmail.com");
        usuariodao.actualizarusuario(usuario, 1);
        System.out.println(usuario.getUsuarioNombre());
        System.out.println(usuario.getUsuarioTelefono());
        System.out.println(usuario.getUsuarioCorreo());
        System.out.println(usuario.getUsuarioId());

       
        
    }
}
