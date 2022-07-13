/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import Modelo.CategoriaProductos;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class CategoriaProductoDao {
    Conexion conexion;
    public CategoriaProductoDao(){
        conexion = new Conexion();
    }

    public List listar() {
        ArrayList<CategoriaProductos> listarCategoriaProductos =new ArrayList();
        CategoriaProductos cat;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarCategoriaProducto}");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                cat = new CategoriaProductos();
                cat.setCodigo(rs.getString(1));
                cat.setDescripcion(rs.getString(2));
                listarCategoriaProductos.add(cat);
            }
        } catch (Exception e) {
            
        }
        return listarCategoriaProductos;
    }

    public boolean Registrar(CategoriaProductos cat) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call InsertarCategoriaProducto(?,?)}");
            cs.setString(1, cat.getDescripcion());
            cs.setInt(2, cat.getEstado());

            int numFAfectadas = cs.executeUpdate();

            if(numFAfectadas>0){
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public boolean Editar(CategoriaProductos cat) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EditarCategoriaProducto(?,?)}");
            cs.setString(1, cat.getDescripcion());
            cs.setString(2, cat.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    public boolean Eliminar(CategoriaProductos cat) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EliminarCategoriaProducto(?)}");
            cs.setString(1, cat.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    public CategoriaProductos listarCodigo(String codigo) {
       CategoriaProductos cat = null;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarCategoriaProductoCodigo (?)}");
            cs.setString(1, codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                cat = new CategoriaProductos();
                cat.setCodigo(rs.getString(1));
                cat.setDescripcion(rs.getString(2));
            }
        } catch (Exception e) {
            
        }
        return cat;
    }
}
