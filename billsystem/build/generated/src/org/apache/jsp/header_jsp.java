package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html> \n");
      out.write("<html xmlns=\"\">\n");
      out.write("<head runat=\"server\">\n");
      out.write("    <meta charset=\"utf-8\"/>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"author\" content=\"\" />\n");
      out.write("    <title>GPJ | Government Polytechnic Jaunpur</title>\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"css/main.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\t<link href=\"css/responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\t<script src=\"js/jquery.js\"></script>\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("\t\tbody{margin-top:5%;}\n");
      out.write("\t\t.carousel-inner > .item > img,\n");
      out.write("\t\t.carousel-inner > .item > a > img {\n");
      out.write("\t\twidth: 80%;\n");
      out.write("                height: 400px;\n");
      out.write("\t\tmargin: auto;\n");
      out.write("\t\t\n");
      out.write("    </style>\n");
      out.write("     \n");
      out.write("    \n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("<header id=\"header\">\n");
      out.write("\n");
      out.write("<!----------- header navbar--------->\n");
      out.write("<nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"banner\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                 <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                     <a class=\"navbar-brand\" href=\"#\"><img src=\"images/logo.png\" alt=\"logo\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-collapse navbar-right\">\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li class=\"active\"><a href=\"index.html\">Home</a></li>\n");
      out.write("                        <li><a href=\"courses.html\">About us</a></li>\n");
      out.write("                        <li><a href=\"admission.html\">Contact us</a></li>                        \n");
      out.write("                        <li><a href=\"infrastructure.html\">Help</a></li> \n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Login<span class=\"caret\"></span></a>\t\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"#\">As Accountant</a></li>\n");
      out.write("\t\t\t\t<li><a href=\"#\">As Admin</a></li>\n");
      out.write("                            </ul>\n");
      out.write("\t\t\t</li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("        </nav>\n");
      out.write("</header>\n");
      out.write("</body>\n");
      out.write("</html>");
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
