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
public class Clientes {
    private String codigo;
    private String TipoDocumento;
    private int NumeroDocumento;
    private String Nombre;
    private int Estado;

    public Clientes() {
    }

    public Clientes(String codigo, String TipoDocumento, int NumeroDocumento, String Nombre, int Estado) {
        this.codigo = codigo;
        this.TipoDocumento = TipoDocumento;
        this.NumeroDocumento = NumeroDocumento;
        this.Nombre = Nombre;
        this.Estado = Estado;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getTipoDocumento() {
        return TipoDocumento;
    }

    public void setTipoDocumento(String TipoDocumento) {
        this.TipoDocumento = TipoDocumento;
    }

    public int getNumeroDocumento() {
        return NumeroDocumento;
    }

    public void setNumeroDocumento(int NumeroDocumento) {
        this.NumeroDocumento = NumeroDocumento;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }


    
    
    
    
    
}
