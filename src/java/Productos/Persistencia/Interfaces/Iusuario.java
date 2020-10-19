/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Productos.Persistencia.Interfaces;

import Productos.Persistencia.Vo.usuario;
import java.util.List;

/**
 *
 * @author jonathan
 */
public interface Iusuario {
    
    public boolean agregarusuario(usuario usuario);
    public usuario Consultarlogin(usuario usuario);
    public List listarusuario();
    public void delete(int id);
    public usuario consularusuarioid(int id);
    public void actualizarusuario(usuario usuario);
}
