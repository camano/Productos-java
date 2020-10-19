/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Productos.Persistencia.Dao;

import Productos.Persistencia.Db.Conexion;
import Productos.Persistencia.Interfaces.Iusuario;
import Productos.Persistencia.Vo.rol;
import Productos.Persistencia.Vo.usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jonathan
 */
public class UsuarioDao implements Iusuario {

    Conexion con = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public boolean agregarusuario(usuario usuario) {

        try {
            String sql = "CALL AgregarUsuario(?,?,?,?,?)";
            ps = con.getConnection().prepareCall(sql);
            ps.setString(1, usuario.getUsuarioNombre());
            ps.setInt(2, usuario.getUsuarioTelefono());
            ps.setString(3, usuario.getUsuarioCorreo());
            ps.setString(4, usuario.getUsuarioClave());
            ps.setInt(5, usuario.getRol().getRolId());
            if (ps.executeUpdate() == 1) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    @Override
    public usuario Consultarlogin(usuario usuario) {
        usuario usuarioconsulta = new usuario();
        try {
            String sql = "call ConsultarUsuario(?,?)";
            ps = con.getConnection().prepareCall(sql);
            ps.setString(1, usuario.getUsuarioCorreo());
            ps.setString(2, usuario.getUsuarioClave());
            rs = ps.executeQuery();
            while (rs.absolute(1)) {
                usuarioconsulta.setUsuarioNombre(rs.getString("usuarioNombre"));
                return usuarioconsulta;

            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public List listarusuario() {
        PreparedStatement pst;
        ResultSet rs;
        List<usuario> lista = new ArrayList<>();
        String sql = "SELECT * FROM producto.usuario;";
        try {
            pst = con.getConnection().prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                usuario usuario = new usuario();
                rol rol = new rol();
                usuario.setUsuarioId(rs.getInt("usuarioId"));
                usuario.setUsuarioNombre(rs.getString("usuarioNombre"));
                usuario.setUsuarioTelefono(rs.getInt("usuarioTelefono"));
                usuario.setUsuarioCorreo(rs.getString("usuarioCorreo"));
             /*   rol.setRolId(rs.getInt("rolId"));
                rol.setRolNombre(rs.getString("rolNombre"));
                usuario.setRol(rol);*/
                lista.add(usuario);
            }

        } catch (Exception e) {
        }
        return lista;
    }

    @Override
    public void delete(int id) {
        String sql = "delete from usuario where usuarioId=" + id;
        try {
            ps = con.getConnection().prepareStatement(sql);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public usuario consularusuarioid(int id) {
        usuario usuario = new usuario();
        try {

            String sql = "select * from usuario where usuarioId=" + id;
            ps = con.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.absolute(1)) {
                usuario.setUsuarioId(rs.getInt("usuarioId"));
                usuario.setUsuarioNombre(rs.getString("usuarioNombre"));
                usuario.setUsuarioTelefono(rs.getInt("usuarioTelefono"));
                usuario.setUsuarioCorreo(rs.getString("usuarioCorreo"));
                return usuario;

            }

        } catch (Exception e) {
            System.out.println("error" + e);
            System.out.println("no se pudo");
        }
        con.cerrar();

        return null;
    }

    @Override
    public void actualizarusuario(usuario usuario, int id) {
        String sql = "call ActualizarUsuario(?,?,?,?)";
        try {
            ps = con.getConnection().prepareCall(sql);
            ps.setString(1, usuario.getUsuarioNombre());
            ps.setInt(2, usuario.getUsuarioTelefono());
            ps.setString(3, usuario.getUsuarioCorreo());
            ps.setInt(4, id);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
