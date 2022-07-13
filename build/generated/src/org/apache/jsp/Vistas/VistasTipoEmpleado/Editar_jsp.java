package org.apache.jsp.Vistas.VistasTipoEmpleado;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Modelo.TipoEmpleado;
import ModeloDatos.TipoEmpleadoDao;

public final class Editar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"./Vistas/VistasTipoEmpleado/agregarTipoEmpleado.css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("           \n");
      out.write("<header class=\"header\">\n");
      out.write("\n");
      out.write("    <a href=\"#\" class=\"logo\">\n");
      out.write("        <img src=\"images/logo.png\" alt=\"\">\n");
      out.write("    </a>\n");
      out.write("\n");
      out.write("    <nav class=\"navbar\">\n");
      out.write("        <a href=\"ControladorTipoEmpleado?accion=Index\">Inicio</a>\n");
      out.write("        <a href=\"ControladorTipoEmpleado?accion=Listar\">Listar</a>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("   \n");
      out.write("        <form class=\"\">\n");
      out.write("\n");
      out.write("            <div class=\"inputBox\">\n");
      out.write("                <span class=\"fas fa-search\"></span>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </form>  \n");
      out.write("         \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</header>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write(" <section class=\"contact\" id=\"contact\">\n");
      out.write("\n");
      out.write("    <h1 class=\"heading\"> <span>Actualizar</span> Cliente </h1>\n");
      out.write("    \n");
      out.write("    <section class=\"about\" id=\"about\">\n");
      out.write("\n");
      out.write("        ");

                TipoEmpleadoDao temD = new TipoEmpleadoDao();
                String codigo = (String)request.getAttribute("codigoListar");
                TipoEmpleado tem = (TipoEmpleado)temD.listarCodigo(codigo);
                
        
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"row\">\n");
      out.write("    \n");
      out.write("            <div class=\"image\">\n");
      out.write("                <img src=\"images/blog-1.jpg\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("            <div class=\"content\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("\n");
      out.write("        <form action=\"\">\n");
      out.write("\n");
      out.write("            <div class=\"inputBox\">\n");
      out.write("                <span class=\"fas fa-user\"></span>\n");
      out.write("                <input type=\"text\"  name=\"txtTipoEmp\" value=\"");
      out.print( tem.getDescripcion());
      out.write("\">\n");
      out.write("            </div>\n");
      out.write("                        \n");
      out.write("             <input type=\"hidden\" name=\"txtCodigo\" value=\"");
      out.print( tem.getCodigo());
      out.write("\">\n");
      out.write("             \n");
      out.write("            <input type=\"submit\" name=\"accion\" value=\"ACTUALIZAR\" class=\"btnListas\">\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <div class=\"inputbox\">\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("</section>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
