/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Productos.Persistencia.Vo;

/**
 *
 * @author jonathan
 */
public class Alerta {
    
    String titulo;
    String texto;
    String tipo;

    public Alerta() {
    }

    public Alerta(String titulo, String texto, String tipo) {
        this.titulo = titulo;
        this.texto = texto;
        this.tipo = tipo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
}
