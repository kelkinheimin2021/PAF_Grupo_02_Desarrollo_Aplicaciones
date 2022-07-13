/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Proveedor;
import ModeloDatos.ProveedorDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorProveedor extends HttpServlet {

    String  Agregar= "Vistas/VistasProveedores/Agregar.jsp";
    String  Editar= "Vistas/VistasProveedores/Editar.jsp";
    String  Listar= "Vistas/VistasProveedores/Listar.jsp";
    
    Proveedor pro = new Proveedor();
    ProveedorDao proD = new ProveedorDao();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorProveedor</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProveedor at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if(action.equalsIgnoreCase("Listar")){
            acceso = Listar;
        }else if(action.equalsIgnoreCase("Agregar")){
            acceso = Agregar;
        }
        else if(action.equalsIgnoreCase("Registrar")){
            String TipoDocumento  = request.getParameter("txtTipoDoc");
            int NumeroDocumento = Integer.parseInt(request.getParameter("txtNumeroDoc"));
            int Ruc = Integer.parseInt(request.getParameter("txtRuc"));
            String Nombre = request.getParameter("txtNombre");
            String RazonSocial = request.getParameter("txtRazonSocial");
            String Direccion = request.getParameter("txtDireccion");
            String correo = request.getParameter("txtEmail");
            int Telefono= Integer.parseInt(request.getParameter("txtTelefono"));
            int Estado = 1;
            pro.setTipoDocumento(TipoDocumento);
            pro.setNumeroDocumento(NumeroDocumento);
            pro.setRuc(Ruc);
            pro.setNombreProveedor(Nombre);
            pro.setRazonSocial(RazonSocial);
            pro.setDireccion(Direccion);
            pro.setCorreo(correo);
            pro.setTelefono(Telefono);
            pro.setEstado(Estado);
            proD.Registrar(pro);
            acceso=Listar;
        }
        else if(action.equalsIgnoreCase("Editar")){
            request.setAttribute("codigoListar", request.getParameter("codigo"));
            acceso= Editar;
        }else if(action.equalsIgnoreCase("Actualizar")){
            String TipoDocumento  = request.getParameter("txtTipoDoc");
            int NumeroDocumento = Integer.parseInt(request.getParameter("txtNumeroDoc"));
            int Ruc = Integer.parseInt(request.getParameter("txtRuc"));
            String Nombre = request.getParameter("txtNombre");
            String RazonSocial = request.getParameter("txtRazonSocial");
            String Direccion = request.getParameter("txtDireccion");
            String correo = request.getParameter("txtEmail");
            int Telefono= Integer.parseInt(request.getParameter("txtTelefono"));
            String codigo = request.getParameter("txtCodigo");
            pro.setTipoDocumento(TipoDocumento);
            pro.setNumeroDocumento(NumeroDocumento);
            pro.setRuc(Ruc);
            pro.setNombreProveedor(Nombre);
            pro.setRazonSocial(RazonSocial);
            pro.setDireccion(Direccion);
            pro.setCorreo(correo);
            pro.setTelefono(Telefono);
            pro.setCodigo(codigo);
            proD.Editar(pro);
            acceso = Listar;
        }
        else if(action.equalsIgnoreCase("Eliminar")){
            String codigo = request.getParameter("codigo");
            pro.setCodigo(codigo);
            proD.Eliminar(pro);
            acceso = Listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
