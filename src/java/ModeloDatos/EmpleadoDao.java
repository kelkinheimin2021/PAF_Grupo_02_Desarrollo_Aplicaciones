/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import Modelo.Empleados;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CLAUDIO CRUZADO E
 */
public class EmpleadoDao {
    
    Conexion conexion;
    public EmpleadoDao(){
        conexion = new Conexion();
    }
    
    public List listar() {
        ArrayList<Empleados> listarEmpleados =new ArrayList();
        Empleados em;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarEmpleado}");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                em = new Empleados();
                em.setCodigo(rs.getString(1));
                em.setTipoDocumento(rs.getString(2));
                em.setNumeroDocumento(rs.getInt(3));
                em.setNombres(rs.getString(4));
                em.setApellidoP(rs.getString(5));
                em.setApellidoM(rs.getString(6));
                em.setDireccion(rs.getString(7));
                em.setFechaNacimiento(rs.getDate(8));
                em.setGenero(rs.getString(9));
                em.setCorreo(rs.getString(10));
                em.setTelefono(rs.getInt(11));
                em.setTipoEmpleado(rs.getString(15));
                listarEmpleados.add(em);
            }
        } catch (Exception e) {
            
        }
        return listarEmpleados;
    }
    public boolean Registrar(Empleados emp) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call InsertarEmpleado(?,?,?,?,?,?,?,?,?,?,?,?)}");
            cs.setString(1, emp.getTipoDocumento());
            cs.setInt(2, emp.getNumeroDocumento());
            cs.setString(3, emp.getNombres());
            cs.setString(4, emp.getApellidoP());
            cs.setString(5, emp.getApellidoM());
            cs.setString(6, emp.getDireccion());
            cs.setDate(7, emp.getFechaNacimiento());
            cs.setString(8, emp.getGenero());
            cs.setString(9, emp.getCorreo());
            cs.setInt(10, emp.getTelefono());
            cs.setInt(11, emp.getEstado());
            cs.setString(12, emp.getTipoEmpleado());
            
            int numFAfectadas = cs.executeUpdate();

            if(numFAfectadas>0){
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
    public Empleados listarCodigo(String codigo) {
       Empleados em = null;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarEmpleadosCodigo (?)}");
            cs.setString(1, codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                em = new Empleados();
                em.setCodigo(rs.getString(1));
                em.setTipoDocumento(rs.getString(2));
                em.setNumeroDocumento(rs.getInt(3));
                em.setNombres(rs.getString(4));
                em.setApellidoP(rs.getString(5));
                em.setApellidoM(rs.getString(6));
                em.setDireccion(rs.getString(7));
                em.setFechaNacimiento(rs.getDate(8));
                em.setGenero(rs.getString(9));
                em.setCorreo(rs.getString(10));
                em.setTelefono(rs.getInt(11));
                em.setTipoEmpleado(rs.getString(13));
            }
        } catch (Exception e) {
            
        }
        return em;
    }
    
    public boolean Editar(Empleados em) {
        try { 
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EditarEmpleado(?,?,?,?,?,?,?,?,?,?,?,?)}");
            cs.setString(1, em.getTipoDocumento());
            cs.setInt(2, em.getNumeroDocumento());
            cs.setString(3, em.getNombres());
            cs.setString(4, em.getApellidoP());
            cs.setString(5, em.getApellidoM());
            cs.setString(6, em.getDireccion());
            cs.setDate(7, em.getFechaNacimiento());
            cs.setString(8, em.getGenero());
            cs.setString(9, em.getCorreo());
            cs.setInt(10, em.getTelefono());
            cs.setString(11, em.getTipoEmpleado());
            cs.setString(12, em.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    public boolean Eliminar(Empleados em) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EliminarEmpleado(?)}");
            cs.setString(1, em.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
