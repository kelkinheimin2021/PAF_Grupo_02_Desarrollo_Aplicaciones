/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import Modelo.TipoEmpleado;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class TipoEmpleadoDao {
    Conexion conexion;
    public TipoEmpleadoDao(){
        conexion = new Conexion();
    }
    
    public List listar() {
        ArrayList<TipoEmpleado> listarEmpleados =new ArrayList();
        TipoEmpleado tem;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarTipoEmpleado}");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                tem = new TipoEmpleado();
                tem.setCodigo(rs.getString(1));
                tem.setDescripcion(rs.getString(2));
                listarEmpleados.add(tem);
            }
        } catch (Exception e) {
            
        }
        return listarEmpleados;
    }
    public boolean Registrar(TipoEmpleado tem) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call InsertarTipoEmpleado(?,?)}");
            cs.setString(1, tem.getDescripcion());
            cs.setInt(2, tem.getEstado());
            
            int numFAfectadas = cs.executeUpdate();

            if(numFAfectadas>0){
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
    public TipoEmpleado listarCodigo(String codigo) {
      TipoEmpleado tem = null;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarTipoEmpleadosCodigo (?)}");
            cs.setString(1, codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                tem = new TipoEmpleado();
                tem.setCodigo(rs.getString(1));
                tem.setDescripcion(rs.getString(2));
            }
        } catch (Exception e) {
            
        }
        return tem;
    }
    
    public boolean Editar(TipoEmpleado em) {
        try { 
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EditarTipoEmpleado(?,?)}");
            cs.setString(1, em.getDescripcion());
            cs.setString(2, em.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    public boolean Eliminar(TipoEmpleado tem) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EliminarTipoEmpleado(?)}");
            cs.setString(1, tem.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
