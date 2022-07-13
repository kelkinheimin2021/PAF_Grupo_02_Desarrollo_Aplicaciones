/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class Empleados {
    private String Codigo;
    private String TipoDocumento;
    private int NumeroDocumento;
    private String Nombres;
    private String ApellidoP;
    private String ApellidoM;
    private String Direccion;
    private Date FechaNacimiento;
    private String Genero;
    private String Correo;
    private int Telefono;
    private int Estado;
    private String TipoEmpleado;

    public Empleados() {
    }

    public Empleados(String Codigo, String TipoDocumento, int NumeroDocumento, String Nombres, String ApellidoP, String ApellidoM, String Direccion, Date FechaNacimiento, String Genero, String Correo, int Telefono, int Estado, String TipoEmpleado) {
        this.Codigo = Codigo;
        this.TipoDocumento = TipoDocumento;
        this.NumeroDocumento = NumeroDocumento;
        this.Nombres = Nombres;
        this.ApellidoP = ApellidoP;
        this.ApellidoM = ApellidoM;
        this.Direccion = Direccion;
        this.FechaNacimiento = FechaNacimiento;
        this.Genero = Genero;
        this.Correo = Correo;
        this.Telefono = Telefono;
        this.Estado = Estado;
        this.TipoEmpleado = TipoEmpleado;
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

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidoP() {
        return ApellidoP;
    }

    public void setApellidoP(String ApellidoP) {
        this.ApellidoP = ApellidoP;
    }

    public String getApellidoM() {
        return ApellidoM;
    }

    public void setApellidoM(String ApellidoM) {
        this.ApellidoM = ApellidoM;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public Date getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(Date FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
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

    public String getTipoEmpleado() {
        return TipoEmpleado;
    }

    public void setTipoEmpleado(String TipoEmpleado) {
        this.TipoEmpleado = TipoEmpleado;
    }
    
    
   

}
