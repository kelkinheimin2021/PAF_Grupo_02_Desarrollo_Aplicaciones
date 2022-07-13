/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Claudio Cruzado
 */
public class Producto {
    private String Codigo;
    private String Nombre;
    private String Descripcion;
    private int Stock;
    private double precio;
    private int Estado;
    private String Categoria;
    private String Marca;
    private String Proveedor;

    public Producto() {
    }

    public Producto(String Codigo, String Nombre, String Descripcion, int Stock, double precio, int Estado, String Categoria, String Marca, String Proveedor) {
        this.Codigo = Codigo;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Stock = Stock;
        this.precio = precio;
        this.Estado = Estado;
        this.Categoria = Categoria;
        this.Marca = Marca;
        this.Proveedor = Proveedor;
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public String getCategoria() {
        return Categoria;
    }

    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }

    public String getProveedor() {
        return Proveedor;
    }

    public void setProveedor(String Proveedor) {
        this.Proveedor = Proveedor;
    }
    
    
}

