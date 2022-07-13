/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import Modelo.Ventas;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class VentaDao {
    Conexion conexion;
    public VentaDao(){
        conexion = new Conexion();
    }

    public List listar() {
        ArrayList<Ventas> listarMarca =new ArrayList();
        Ventas ven;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarVenta}");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                ven = new Ventas();
                ven.setCodigo(rs.getString(1));
                ven.setFecha(rs.getDate(2));
                ven.setCliente(rs.getString(3));
                ven.setEmpleado(rs.getString(4));
                ven.setPago(rs.getString(5));
                ven.setCantidad(rs.getInt(6));
                ven.setProducto(rs.getString(7));
                ven.setPrecio(rs.getDouble(8));
                ven.setTotal(rs.getDouble(9));
                listarMarca.add(ven);
            }
        } catch (Exception e) {
            
        }
        return listarMarca;
    }

    public boolean Registrar(Ventas ven) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call InsertarVenta(?,?,?,?,?,?,?,?)}");
            cs.setDate(1, ven.getFecha());
            cs.setString(2, ven.getCliente());
            cs.setString(3, ven.getEmpleado());
            cs.setString(4, ven.getPago());
            cs.setDouble(5, ven.getCantidad());
            cs.setString(6, ven.getProducto());
            cs.setDouble(7, ven.getPrecio());
            cs.setDouble(8, ven.getTotal());
            int numFAfectadas = cs.executeUpdate();

            if(numFAfectadas>0){
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    
}
