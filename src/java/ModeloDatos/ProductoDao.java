/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import Modelo.Producto;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class ProductoDao {
    
    Conexion conexion;
    public ProductoDao(){
        conexion = new Conexion();
    }
    
    public List listar() {
        ArrayList<Producto> listarProducto =new ArrayList();
        Producto pro;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarProducto}");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                pro = new Producto();
                pro.setCodigo(rs.getString(1));
                pro.setNombre(rs.getString(2));
                pro.setDescripcion(rs.getString(3));
                pro.setStock(rs.getInt(4));
                pro.setPrecio(rs.getDouble(5));
                pro.setCategoria(rs.getString(6));
                pro.setMarca(rs.getString(7));
                pro.setProveedor(rs.getString(8));
                listarProducto.add(pro);
            }
        } catch (Exception e) {
            
        }
        return listarProducto;
    }
    public boolean Registrar(Producto pro) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call InsertarProducto(?,?,?,?,?,?,?,?)}");
            cs.setString(1, pro.getNombre());
            cs.setString(2, pro.getDescripcion());
            cs.setInt(3, pro.getStock());
            cs.setDouble(4, pro.getPrecio());
            cs.setInt(5, pro.getEstado());
            cs.setString(6, pro.getCategoria());
            cs.setString(7, pro.getMarca());
            cs.setString(8, pro.getProveedor());
            
            int numFAfectadas = cs.executeUpdate();

            if(numFAfectadas>0){
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
    public Producto listarCodigo(String codigo) {
       Producto pro = null;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarProductoCodigo (?)}");
            cs.setString(1, codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                pro = new Producto();
                pro.setCodigo(rs.getString(1));
                pro.setNombre(rs.getString(2));
                pro.setDescripcion(rs.getString(3));
                pro.setStock(rs.getInt(4));
                pro.setPrecio(rs.getDouble(5));
                pro.setCategoria(rs.getString(7));
                pro.setMarca(rs.getString(8));
                pro.setProveedor(rs.getString(9));
            }
        } catch (Exception e) {
            
        }
        return pro;
    }
    
    public boolean Editar(Producto pro) {
        try { 
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EditarProducto(?,?,?,?,?,?,?,?)}");
            cs.setString(1, pro.getNombre());
            cs.setString(2, pro.getDescripcion());
            cs.setInt(3, pro.getStock());
            cs.setDouble(4, pro.getPrecio());
            cs.setString(5, pro.getCategoria());
            cs.setString(6, pro.getMarca());
            cs.setString(7, pro.getProveedor());
            cs.setString(8, pro.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    public boolean Eliminar(Producto pro) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EliminarProducto(?)}");
            cs.setString(1, pro.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
