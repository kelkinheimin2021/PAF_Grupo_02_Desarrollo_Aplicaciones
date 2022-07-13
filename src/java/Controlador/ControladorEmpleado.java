/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Clientes;
import Modelo.Empleados;
import ModeloDatos.ClienteDao;
import ModeloDatos.EmpleadoDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorEmpleado extends HttpServlet {

    String  Agregar= "Vistas/VistasEmpleado/Agregar.jsp";
    String  Editar= "Vistas/VistasEmpleado/Editar.jsp";
    String  Listar= "Vistas/VistasEmpleado/Listar.jsp";
    
    Empleados em = new Empleados();
    EmpleadoDao emD = new EmpleadoDao();
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
            String TipoDocumento  = request.getParameter("txtTipoDocEmpleado");
            int NumeroDocumento = Integer.parseInt(request.getParameter("txtNumeroDocEmpleado"));
            String Nombres = request.getParameter("txtNombreEmpleado");
            String ApellidoP = request.getParameter("txtApellidoPatEmpleado");
            String ApellidoM = request.getParameter("txtApellidoMatEmpleado");
            String Direccion = request.getParameter("txtDireccionEmpleado");
            Date FechaNac = Date.valueOf(request.getParameter("txtFechaNacimientoEmpleado"));
            String Genero= request.getParameter("txtGeneroEmpleado");
            String Correo = request.getParameter("txtEmailEmpleado");
            int telefono = Integer.parseInt(request.getParameter("txtTelefonoEmpleado"));
            int Estado = 1;
            String TipoEmp = request.getParameter("txtTipoEmpleado");
            em.setTipoDocumento(TipoDocumento);
            em.setNumeroDocumento(NumeroDocumento);
            em.setNombres(Nombres);
            em.setApellidoP(ApellidoP);
            em.setApellidoM(ApellidoM);
            em.setDireccion(Direccion);
            em.setFechaNacimiento(FechaNac);
            em.setGenero(Genero);
            em.setCorreo(Correo);
            em.setTelefono(telefono);
            em.setEstado(Estado);
            em.setTipoEmpleado(TipoEmp);
            emD.Registrar(em);
            acceso=Listar;
        }
        else if(action.equalsIgnoreCase("Editar")){
            request.setAttribute("codigoListar", request.getParameter("codigo"));
            acceso= Editar;
        }else if(action.equalsIgnoreCase("Actualizar")){
            String TipoDocumento  = request.getParameter("txtTipoDocEmpleado");
            int NumeroDocumento = Integer.parseInt(request.getParameter("txtNumeroDocEmpleado"));
            String Nombres = request.getParameter("txtNombreEmpleado");
            String ApellidoP = request.getParameter("txtApellidoPatEmpleado");
            String ApellidoM = request.getParameter("txtApellidoMatEmpleado");
            String Direccion = request.getParameter("txtDireccionEmpleado");
            Date FechaNac = Date.valueOf(request.getParameter("txtFechaNacimientoEmpleado"));
            String Genero= request.getParameter("txtGeneroEmpleado");
            String Correo = request.getParameter("txtEmailEmpleado");
            int telefono = Integer.parseInt(request.getParameter("txtTelefonoEmpleado"));
            String TipoEmp = request.getParameter("txtTipoEmpleado");
            String codigo = request.getParameter("txtCodigo");
            em.setTipoDocumento(TipoDocumento);
            em.setNumeroDocumento(NumeroDocumento);
            em.setNombres(Nombres);
            em.setApellidoP(ApellidoP);
            em.setApellidoM(ApellidoM);
            em.setDireccion(Direccion);
            em.setFechaNacimiento(FechaNac);
            em.setGenero(Genero);
            em.setCorreo(Correo);
            em.setTelefono(telefono);
            em.setTipoEmpleado(TipoEmp);
            em.setCodigo(codigo);
            emD.Editar(em);
            acceso = Listar;
        }
        else if(action.equalsIgnoreCase("Eliminar")){
            String codigo = request.getParameter("codigo");
            em.setCodigo(codigo);
            emD.Eliminar(em);
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
