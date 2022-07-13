/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Producto;
import ModeloDatos.ProductoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorProducto extends HttpServlet {

    String  Agregar= "Vistas/VistasProducto/Agregar.jsp";
    String  Editar= "Vistas/VistasProducto/Editar.jsp";
    String  Listar= "Vistas/VistasProducto/Listar.jsp";
    
    Producto pro = new Producto();
    ProductoDao proD = new ProductoDao();
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
            out.println("<title>Servlet ControladorProducto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProducto at " + request.getContextPath() + "</h1>");
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
            String Nombre  = request.getParameter("txtNombre");
            String Descripcion = request.getParameter("txtDescripcion");
            int Stock = Integer.parseInt(request.getParameter("txtStock"));
            double Precio = Double.parseDouble(request.getParameter("txtPrecio"));
            String Categoria = request.getParameter("txtCategoria");
            String Marca = request.getParameter("txtMarca");
            String Proveedor= request.getParameter("txtProveedor");
            int Estado = 1;
            pro.setNombre(Nombre);
            pro.setDescripcion(Descripcion);
            pro.setStock(Stock);
            pro.setPrecio(Precio);
            pro.setEstado(Estado);
            pro.setCategoria(Categoria);
            pro.setMarca(Marca);
            pro.setProveedor(Proveedor);
            proD.Registrar(pro);
            acceso=Listar;
        }
        else if(action.equalsIgnoreCase("Editar")){
            request.setAttribute("codigoListar", request.getParameter("codigo"));
            acceso= Editar;
        }else if(action.equalsIgnoreCase("Actualizar")){
            String Nombre  = request.getParameter("txtNombre");
            String Descripcion = request.getParameter("txtDescripcion");
            int Stock = Integer.parseInt(request.getParameter("txtStock"));
            double Precio = Double.parseDouble(request.getParameter("txtPrecio"));
            String Categoria = request.getParameter("txtCategoria");
            String Marca = request.getParameter("txtMarca");
            String Proveedor= request.getParameter("txtProveedor");
            String codigo = request.getParameter("txtCodigo");
            pro.setNombre(Nombre);
            pro.setDescripcion(Descripcion);
            pro.setStock(Stock);
            pro.setPrecio(Precio);
            pro.setCategoria(Categoria);
            pro.setMarca(Marca);
            pro.setProveedor(Proveedor);
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
