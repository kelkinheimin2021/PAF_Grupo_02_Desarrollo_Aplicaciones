package org.apache.jsp.Vistas.VistasCliente.VistaCliente;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import java.util.Iterator;
import Modelo.Clientes;
import ModeloDatos.ClienteDao;

public final class Listar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"listarClientes.css\">\n");
      out.write("    <title>Document</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"wraper\">\n");
      out.write("            \n");
      out.write("        <div class=\"mainCliente\">\n");
      out.write("            <h1 class=\"heading\"> REGISTRO <span>CLIENTE</span> </h1>\n");
      out.write("            <a href=\"ControladorCliente?accion=Agregar\">Agregar Nuevo Cliente</a>\n");
      out.write("            <section class=\"review\" id=\"review\">\n");
      out.write("                <div class=\"box-container\">\n");
      out.write("\n");
      out.write("                    <div class=\"boxOp\">\n");
      out.write("\n");
      out.write("                        <section class=\"blogs\" id=\"blogs\">\n");
      out.write("                            <div class=\"box-container\">\n");
      out.write("\n");
      out.write("                                <div class=\"box\">\n");
      out.write("                                    <div class=\"image\">\n");
      out.write("                                        <img src=\"images/blog-1.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"content\">\n");
      out.write("                                        <a href=\"#\" class=\"title\">AGREGAR</a>\n");
      out.write("                                        <span>Listar clientes</span>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"box\">\n");
      out.write("                                    <div class=\"image\">\n");
      out.write("                                        <img src=\"images/blog-2.jpeg\" alt=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"content\">\n");
      out.write("                                        <a href=\"#\" class=\"title\">LISTAR</a>\n");
      out.write("                                        <span>Modificar clientes</span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </section>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"box\">\n");
      out.write("\n");
      out.write("                        <section class=\"contact\" id=\"contact\">\n");
      out.write("\n");
      out.write("                            <div class=\"rowtable\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <table class=\"table table-bordered table-striped \">\n");
      out.write("                                    <thead class=\"encabezadoTabla \">\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>Codigo</th>\n");
      out.write("                                            <th>T. Documento</th>\n");
      out.write("                                            <th>Documento</th>\n");
      out.write("                                            <th>Nombre</th>\n");
      out.write("                                            <th>MODIFICAR</th>\n");
      out.write("                                            <th>ELIMINAR</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                        \n");
      out.write("                                    </thead>\n");
      out.write("                                    ");

                    ClienteDao cliD = new ClienteDao();
                    List<Clientes> list=cliD.listar();
                    Iterator<Clientes>iter=list.iterator();
                    Clientes cli = null;
                    while(iter.hasNext()){
                        cli=iter.next();
                    
                                    
      out.write("\n");
      out.write("                                    <tbody class=\"cuerpoTabla \">\n");
      out.write("                                        <tr>\n");
      out.write("                                             <td>");
      out.print( cli.getCodigo() );
      out.write("</td>\n");
      out.write("                                             <td>");
      out.print( cli.getTipoDocumento() );
      out.write("</td>\n");
      out.write("                                             <td>");
      out.print( cli.getNumeroDocumento());
      out.write("</td>\n");
      out.write("                                             <td>");
      out.print( cli.getNombre() );
      out.write("</td>\n");
      out.write("                                             <td>\n");
      out.write("                                                 <a href=\"ControladorCliente?accion=Editar&codigo=");
      out.print( cli.getCodigo() );
      out.write("\">Editar</a>\n");
      out.write("                                                 <a href=\"ControladorCliente?accion=Eliminar&codigo=");
      out.print( cli.getCodigo() );
      out.write("\">Eliminar</a>\n");
      out.write("                                             </td>\n");
      out.write("                                            \n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                                        ");
} 
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                      </section>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- custom js file link  -->\n");
      out.write("    <script src=\"js/script.js\"></script>\n");
      out.write("</body> \n");
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
