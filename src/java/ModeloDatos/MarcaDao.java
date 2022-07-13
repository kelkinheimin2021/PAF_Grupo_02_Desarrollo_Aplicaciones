/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import Modelo.Marca;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class MarcaDao {
    Conexion conexion;
    public MarcaDao(){
        conexion = new Conexion();
    }

    public List listar() {
        ArrayList<Marca> listarMarca =new ArrayList();
        Marca mar;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarMarca}");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                mar = new Marca();
                mar.setCodigo(rs.getString(1));
                mar.setDescripcion(rs.getString(2));
                listarMarca.add(mar);
            }
        } catch (Exception e) {
            
        }
        return listarMarca;
    }

    public boolean Registrar(Marca mar) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call InsertarMarca(?,?)}");
            cs.setString(1, mar.getDescripcion());
            cs.setInt(2, mar.getEstado());

            int numFAfectadas = cs.executeUpdate();

            if(numFAfectadas>0){
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public boolean Editar(Marca mar) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EditarMarca(?,?)}");
            cs.setString(1, mar.getDescripcion());
            cs.setString(2, mar.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    public boolean Eliminar(Marca mar) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EliminarMarca(?)}");
            cs.setString(1, mar.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    public Marca listarCodigo(String codigo) {
       Marca mar = null;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarMarcaCodigo (?)}");
            cs.setString(1, codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                mar = new Marca();
                mar.setCodigo(rs.getString(1));
                mar.setDescripcion(rs.getString(2));
            }
        } catch (Exception e) {
            
        }
        return mar;
    }
}
