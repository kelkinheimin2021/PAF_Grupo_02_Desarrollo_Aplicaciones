/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Clientes;
import ModeloDatos.ClienteDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorCliente extends HttpServlet {

    String  Agregar= "Vistas/VistasCliente/Agregar.jsp";
    String  Editar= "Vistas/VistasCliente/Editar.jsp";
    String  Listar= "Vistas/VistasCliente/Listar.jsp";
    
    Clientes cli = new Clientes();
    ClienteDao cliD = new ClienteDao();
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
            out.println("<title>Servlet ControladorCliente</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorCliente at " + request.getContextPath() + "</h1>");
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
            String Nombre = request.getParameter("txtNombre");
            int Estado = 1;
            cli.setTipoDocumento(TipoDocumento);
            cli.setNumeroDocumento(NumeroDocumento);
            cli.setNombre(Nombre);
            cli.setEstado(Estado);
            cliD.Registrar(cli);
            acceso=Listar;
        }
        else if(action.equalsIgnoreCase("Editar")){
            request.setAttribute("codigoListar", request.getParameter("codigo"));
            acceso= Editar;
        }else if(action.equalsIgnoreCase("Actualizar")){
            String TipoDocumento  = request.getParameter("txtTipoDoc");
            int NumeroDocumento = Integer.parseInt(request.getParameter("txtNumeroDoc"));
            String Nombre = request.getParameter("txtNombre"); 
            String codigo = request.getParameter("txtCodigo");
            cli.setTipoDocumento(TipoDocumento);
            cli.setNumeroDocumento(NumeroDocumento);
            cli.setNombre(Nombre);
            cli.setCodigo(codigo);
            cliD.Editar(cli);
            acceso = Listar;
        }
        else if(action.equalsIgnoreCase("Eliminar")){
            String codigo = request.getParameter("codigo");
            cli.setCodigo(codigo);
            cliD.Eliminar(cli);
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
