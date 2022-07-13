/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author Claudio Cruzado
 */
public class Ventas {
    private String Codigo;
    private Date Fecha;
    private String Cliente;
    private String Empleado;
    private String Pago;
    private int Cantidad;
    private String Producto;
    private double Precio;
    private Double Total;

    public Ventas() {
    }

    public Ventas(String Codigo, Date Fecha, String Cliente, String Empleado, String Pago, int Cantidad, String Producto, double Precio, Double Total) {
        this.Codigo = Codigo;
        this.Fecha = Fecha;
        this.Cliente = Cliente;
        this.Empleado = Empleado;
        this.Pago = Pago;
        this.Cantidad = Cantidad;
        this.Producto = Producto;
        this.Precio = Precio;
        this.Total = Total;
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public String getEmpleado() {
        return Empleado;
    }

    public void setEmpleado(String Empleado) {
        this.Empleado = Empleado;
    }

    public String getPago() {
        return Pago;
    }

    public void setPago(String Pago) {
        this.Pago = Pago;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public String getProducto() {
        return Producto;
    }

    public void setProducto(String Producto) {
        this.Producto = Producto;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public Double getTotal() {
        return Total;
    }

    public void setTotal(Double Total) {
        this.Total = Total;
    }

    
}
