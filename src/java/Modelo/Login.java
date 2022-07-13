/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class Login {
   private int codigo;
   private int usuario;
   private int contra;

    public Login() {
    }

    public Login(int codigo, int usuario, int contra) {
        this.codigo = codigo;
        this.usuario = usuario;
        this.contra = contra;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getUsuario() {
        return usuario;
    }

    public void setUsuario(int usuario) {
        this.usuario = usuario;
    }

    public int getContra() {
        return contra;
    }

    public void setContra(int contra) {
        this.contra = contra;
    }
   
   
}
