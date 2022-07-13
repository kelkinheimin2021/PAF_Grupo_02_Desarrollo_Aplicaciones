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
public class Proveedor {
    private String Codigo;
    private String TipoDocumento;
    private int NumeroDocumento;
    private int Ruc;
    private String NombreProveedor;
    private String RazonSocial;
    private String Direccion;
    private String Correo;
    private int Telefono;
    private int Estado;

    public Proveedor() {
    }

    public Proveedor(String Codigo, String TipoDocumento, int NumeroDocumento, int Ruc, String NombreProveedor, String RazonSocial, String Direccion, String Correo, int Telefono, int Estado) {
        this.Codigo = Codigo;
        this.TipoDocumento = TipoDocumento;
        this.NumeroDocumento = NumeroDocumento;
        this.Ruc = Ruc;
        this.NombreProveedor = NombreProveedor;
        this.RazonSocial = RazonSocial;
        this.Direccion = Direccion;
        this.Correo = Correo;
        this.Telefono = Telefono;
        this.Estado = Estado;
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
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

    public int getRuc() {
        return Ruc;
    }

    public void setRuc(int Ruc) {
        this.Ruc = Ruc;
    }

    public String getNombreProveedor() {
        return NombreProveedor;
    }

    public void setNombreProveedor(String NombreProveedor) {
        this.NombreProveedor = NombreProveedor;
    }

    public String getRazonSocial() {
        return RazonSocial;
    }

    public void setRazonSocial(String RazonSocial) {
        this.RazonSocial = RazonSocial;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }
    
    
}
