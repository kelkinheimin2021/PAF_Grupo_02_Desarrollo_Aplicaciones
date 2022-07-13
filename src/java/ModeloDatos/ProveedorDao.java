/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import Modelo.Proveedor;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class ProveedorDao {
    Conexion conexion;
    public ProveedorDao(){
        conexion = new Conexion();
    }
    
    public List listar() {
        ArrayList<Proveedor> listarProveedores =new ArrayList();
        Proveedor pro;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarProveedores}");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                pro = new Proveedor();
                pro.setCodigo(rs.getString(1));
                pro.setTipoDocumento(rs.getString(2));
                pro.setNumeroDocumento(rs.getInt(3));
                pro.setRuc(rs.getInt(4));
                pro.setNombreProveedor(rs.getString(5));
                pro.setRazonSocial(rs.getString(6));
                pro.setDireccion(rs.getString(7));
                pro.setCorreo(rs.getString(8));
                pro.setTelefono(rs.getInt(9));
                listarProveedores.add(pro);
            }
        } catch (Exception e) {
            
        }
        return listarProveedores;
    }
    public boolean Registrar(Proveedor pro) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call InsertarProveedor(?,?,?,?,?,?,?,?,?)}");
            cs.setString(1, pro.getTipoDocumento());
            cs.setInt(2, pro.getNumeroDocumento());
            cs.setInt(3, pro.getRuc());
            cs.setString(4, pro.getNombreProveedor());
            cs.setString(5, pro.getRazonSocial());
            cs.setString(6, pro.getDireccion());
            cs.setString(7, pro.getCorreo());
            cs.setInt(8, pro.getTelefono());
            cs.setInt(9, pro.getEstado());
            
            int numFAfectadas = cs.executeUpdate();

            if(numFAfectadas>0){
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
    public Proveedor listarCodigo(String codigo) {
       Proveedor pro = null;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarProveedoresCodigo (?)}");
            cs.setString(1, codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                pro = new Proveedor();
                pro.setCodigo(rs.getString(1));
                pro.setTipoDocumento(rs.getString(2));
                pro.setNumeroDocumento(rs.getInt(3));
                pro.setRuc(rs.getInt(4));
                pro.setNombreProveedor(rs.getString(5));
                pro.setRazonSocial(rs.getString(6));
                pro.setDireccion(rs.getString(7));
                pro.setCorreo(rs.getString(8));
                pro.setTelefono(rs.getInt(9));
            }
        } catch (Exception e) {
            
        }
        return pro;
    }
    
    public boolean Editar(Proveedor pro) {
        try { 
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EditarProveedores(?,?,?,?,?,?,?,?,?)}");
            cs.setString(1, pro.getTipoDocumento());
            cs.setInt(2, pro.getNumeroDocumento());
            cs.setInt(3, pro.getRuc());
            cs.setString(4, pro.getNombreProveedor());
            cs.setString(5, pro.getRazonSocial());
            cs.setString(6, pro.getDireccion());
            cs.setString(7, pro.getCorreo());
            cs.setInt(8, pro.getTelefono());
            cs.setString(9, pro.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    public boolean Eliminar(Proveedor pro) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EliminarProveedores(?)}");
            cs.setString(1, pro.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
