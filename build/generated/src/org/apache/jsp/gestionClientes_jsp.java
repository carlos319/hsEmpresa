package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class gestionClientes_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Gestion de Clientes</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"CSS/style.css\" rel=\"stylesheet\" type=\"text/css\"/>       \n");
      out.write("    </head>\n");
      out.write("    <body background=\"img/F5.jpg\" > \n");
      out.write("        <div align='center'>\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("            <h1 text-center >Registrar Cliente Nuevo</h1><br>\n");
      out.write("        </div>\n");
      out.write("                    \n");
      out.write("        <div class=\"container col-lg-3\" >\n");
      out.write("\n");
      out.write("        <form action=\"\" method=\"post\">\n");
      out.write("     \n");
      out.write("            IdCliente:\n");
      out.write("            <input type=\"text\" name=\"idcliente\">\n");
      out.write("            <br/>\n");
      out.write("            <br>\n");
      out.write("            Nombre:\n");
      out.write("            <input type=\"text\" name=\"nombre\">\n");
      out.write("            <br/>\n");
      out.write("            <br>\n");
      out.write("            Correo:\n");
      out.write("            <input type=\"text\" name=\"Correo\">\n");
      out.write("            <br/>\n");
      out.write("            <br>\n");
      out.write("            Direccion:\n");
      out.write("            <input type=\"text\" name=\"Direccion\">\n");
      out.write("            <br/> \n");
      out.write("            <br>\n");
      out.write("            Categoria:\n");
      out.write("\n");
      out.write("            <input type=\"Radio\" name=\"categoria\" value= \"0\"checked>0\n");
      out.write("\n");
      out.write("            <input type=\"Radio\" name= \"categoria\"value=\"1\">1\n");
      out.write("\n");
      out.write("            <input type=\"Radio\" name= \"categoria\"value=\"2\">2\n");
      out.write("\n");
      out.write("            <input type=\"Radio\" name= \"categoria\"value=\"3\">3\n");
      out.write("            <br>\n");
      out.write("            <p><input type=\"submit\" value=\"Enviar \"></p>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("      </div>  \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");

       //CONECTANOD A LA BASE DE DATOS:
       Connection con;
       String url="jdbc:mysql://localhost:3306/registro_clientes";
       String Driver="com.mysql.jdbc.Driver";
       String user="root";
       String clave="1111cccc";
       Class.forName(Driver);
       con=DriverManager.getConnection(url,user,clave);
       PreparedStatement ps;
       String nombre, Correo, Direccion, categoria;
       
       nombre=request.getParameter("nombre");
       Correo=request.getParameter("Correo");
       Direccion=request.getParameter("Direccion");
       categoria=request.getParameter("categoria");
       if(nombre!=""){
           ps=con.prepareStatement("insert into cliente(nombClien, correoClien, dirClien, CategClien)values('"+nombre+"','"+Correo+"','"+Direccion+"',"+categoria+")");
           ps.executeUpdate();               
            
           
       }
       
       

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
