/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Ventas;
import ModeloDatos.VentaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorVentas extends HttpServlet {

    String  Agregar= "Vistas/VistasVentas/Agregar.jsp";
    String  Editar= "Vistas/VistasVentas/Editar.jsp";
    String  Listar= "Vistas/VistasVentas/Listar.jsp";
    
    Ventas ven = new Ventas();
    VentaDao venD = new VentaDao();
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
            out.println("<title>Servlet ControladorVentas</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorVentas at " + request.getContextPath() + "</h1>");
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
            Date fecha  = Date.valueOf(request.getParameter("txtFecha"));
            String cliente  = request.getParameter("txtCliente");
            String empleado  = request.getParameter("txtEmpleado");
            String pago  = request.getParameter("txtPago");
            int cantidad  = Integer.parseInt(request.getParameter("txtCantidad"));
            String producto  = request.getParameter("txtProducto");
            double precio  = Double.parseDouble(request.getParameter("txtPrecio"));
            double total = precio * cantidad;
            ven.setFecha(fecha);
            ven.setCliente(cliente);
            ven.setEmpleado(empleado);
            ven.setPago(pago);
            ven.setCantidad(cantidad);
            ven.setProducto(producto);
            ven.setPrecio(precio);
            ven.setTotal(total);
            venD.Registrar(ven);
            acceso=Listar;
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
