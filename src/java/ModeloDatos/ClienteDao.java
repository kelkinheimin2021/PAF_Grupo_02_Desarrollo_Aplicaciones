/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDatos;

import Modelo.Clientes;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ClienteDao {
    Conexion conexion;
    public ClienteDao(){
        conexion = new Conexion();
    }

    public List listar() {
        ArrayList<Clientes> listarClientes =new ArrayList();
        Clientes cliente;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarClientes}");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                cliente = new Clientes();
                cliente.setCodigo(rs.getString(1));
                cliente.setTipoDocumento(rs.getString(2));
                cliente.setNumeroDocumento(rs.getInt(3));
                cliente.setNombre(rs.getString(4));
                listarClientes.add(cliente);
            }
        } catch (Exception e) {
            
        }
        return listarClientes;
    }

    public boolean Registrar(Clientes cli) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call InsertarClientes(?,?,?,?)}");
            cs.setString(1, cli.getTipoDocumento());
            cs.setInt(2, cli.getNumeroDocumento());
            cs.setString(3, cli.getNombre());
            cs.setInt(4, cli.getEstado());


            int numFAfectadas = cs.executeUpdate();

            if(numFAfectadas>0){
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public boolean Editar(Clientes cli) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EditarCliente(?,?,?,?)}");
            cs.setString(1, cli.getTipoDocumento());
            cs.setInt(2, cli.getNumeroDocumento());
            cs.setString(3, cli.getNombre());
            cs.setString(4, cli.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    public boolean Eliminar(Clientes cli) {
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call EliminarCliente(?)}");
            cs.setString(1, cli.getCodigo());
            cs.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    public Clientes listarCodigo(String codigo) {
       Clientes cliente = null;
        try {
            Connection accesoBD = conexion.getConnection();
            CallableStatement cs = accesoBD.prepareCall("{ call ListarClienteCodigo (?)}");
            cs.setString(1, codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                cliente = new Clientes();
                cliente.setCodigo(rs.getString(1));
                cliente.setTipoDocumento(rs.getString(2));
                cliente.setNumeroDocumento(rs.getInt(3));
                cliente.setNombre(rs.getString(4));
            }
        } catch (Exception e) {
            
        }
        return cliente;
    }
    
}
