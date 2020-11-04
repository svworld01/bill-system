package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\"/>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"author\" content=\"\" />\n");
      out.write("    <title>Payment Billing System</title>\n");
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
      out.write("                        <li><a href=\"about.html\">About us</a></li>\n");
      out.write("                        <li><a href=\"contact.html\">Contact us</a></li>                        \n");
      out.write("                        <li><a href=\"help.html\">Help</a></li> \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("        </nav>\n");
      out.write("</header>\n");
      out.write("<!------------/nav-------------->\n");
      out.write(" <!------------image slider-------->\n");
      out.write("  \n");
      out.write("  <br>\n");
      out.write("  <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("    <!-- Indicators -->\n");
      out.write("    <ol class=\"carousel-indicators\">\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\n");
      out.write("    </ol>\n");
      out.write("\n");
      out.write("<!-- Wrapper for slides -->\n");
      out.write("    <div class=\"carousel-inner\" role=\"listbox\" >\n");
      out.write("\n");
      out.write("      <div class=\"item\" style=\"background-image: url(images/img/bg1.jpg);\">\n");
      out.write("        <img src=\"images/img/1.png\" alt=\"Computer labs\" width=\"800px\" height=\"500px\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h2>Government Polytechnic Jaunpur</h2>\n");
      out.write("          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"item\" style=\"background-image: url(images/img/bg1.jpg);\">\n");
      out.write("        <img src=\"images/img/2.png\" alt=\"pharmency labs\" width=\"800px;\" height=\"500px\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h2>Government Polytechnic Jaunpur</h2>\n");
      out.write("          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("      <div class=\"item\" style=\"background-image:  url(images/img/bg1.jpg)\">\n");
      out.write("        <img src=\"images/img/3.png\" alt=\"Elex labs\" width=\"800px\" height=\"500px\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h2>Government Polytechnic Jaunpur</h2>\n");
      out.write("          <p>Beatiful flowers in Kolymbari, Crete.</p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"item\" style=\"background-image:  url(images/img/bg1.jpg)\">\n");
      out.write("        <img src=\"images/img/4.png\" alt=\"Chemistry labs\" width=\"800px\" height=\"500px\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h2>Government Polytechnic Jaunpur</h2>\n");
      out.write("          <p>Beatiful flowers in Kolymbari, Crete.</p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        <div class=\"item active\" style=\"background-image:  url(images/img/bg1.jpg)\">\n");
      out.write("        <img src=\"images/img/5.jpg\" alt=\"Chemistry labs\" width=\"800px\" height=\"500px\">\n");
      out.write("        <div class=\"carousel-caption\">\n");
      out.write("          <h2>Government Polytechnic Jaunpur</h2>\n");
      out.write("          <p>Beatiful flowers in Kolymbari, Crete.</p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("  \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Left and right controls -->\n");
      out.write("    <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Previous</span>\n");
      out.write("    </a>\n");
      out.write("    <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\n");
      out.write("      <span class=\"sr-only\">Next</span>\n");
      out.write("    </a>\n");
      out.write("  </div>\n");
      out.write(" </div> \n");
      out.write("  <div class=\"container\">\n");
      out.write("  <div class=\"jumbotron\">\n");
      out.write("    <h2>Payment Billing System</h2> \n");
      out.write("    <p>Govt Polytechnic, Jaunpur was established in 1984. The \n");
      out.write("\tInstitute was started with only one branch i.e. Diploma Pharmacy \n");
      out.write("\twith admission capacity of 40 students but now it is running two \n");
      out.write("\tother disciplines of engineering i.e. Diploma in Electronics \n");
      out.write("\tEngineering. and Diploma in Computer Science/Engineering.<br/>\n");
      out.write("\t<div class=\"text-center\"><button type=\"button\" class=\"btn btn-primary text-right\">Read More</button></div>\n");
      out.write("\t</p> \n");
      out.write("  </div>\n");
      out.write("      <div class=\"row\">\n");
      out.write("          <div class=\"col-lg-8\">\n");
      out.write("              <h1>INTRODUCTION</h1>\n");
      out.write("              <p>\n");
      out.write("                  The project titled as ?PAYMENT BILLING SYSTEM ?is a web based application. An institute \n");
      out.write("                  have  different branches at different locations   want to control and maintain the accountant\n");
      out.write("                  salary and student personal and payment details. software provides facility for reporting  , new \n");
      out.write("                  student details, payment \n");
      out.write("                  details ,and modify details of student and salary of the accountant. \n");
      out.write("              </p>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-4\">\n");
      out.write("              <h2 style=\"text-align: center\">Login Panel</h2>\n");
      out.write("          <form method=\"post\" action=\"Login\">\n");
      out.write("            \n");
      out.write("              <label for=\"type\">Login Type</label>\n");
      out.write("              <select id=\"type\" name=\"type\" class=\"form-control\">\n");
      out.write("                  <option value=\"Accountants\">Accountants</option>\n");
      out.write("                  <option value=\"Admin\">Admin</option>\n");
      out.write("              </select>\n");
      out.write("                <label for=\"usr\">Email: </label>\n");
      out.write("                <input type=\"Email\" class=\"form-control\" id=\"usr\" placeholder=\"email\" required=\"required\" name=\"email\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                <label for=\"pwd\">Password: </label>\n");
      out.write("                <input type=\"Password\" class=\"form-control\" id=\"pwd\" placeholder=\"password\" required=\"required\" name=\"password\">\n");
      out.write("                <br/>\n");
      out.write("                <input type=\"submit\" value=\"login\" class=\"btn btn-primary\" style=\"float:right;\">\n");
      out.write("                \n");
      out.write("            \n");
      out.write("            </form>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      <!----------------------features---------------------->\n");
      out.write("      <h1 style=\"margin-top: 0px;\">Features</h1>\n");
      out.write("  <p>feature1 , feature 2, feature3</p>\n");
      out.write("  <div class=\"row\" style=\"text-align: center; margin-top:30px; margin-bottom: 20px;\">\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("              <h3>FEature 1</h3>\n");
      out.write("              <img src=\"images/1.png\" alt=\"cs\" style=\"width:90%; height:200px;\" class=\"img-thumbnail\">\n");
      out.write("              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n");
      out.write("        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n");
      out.write("        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n");
      out.write("              <a class=\"btn btn-default\" role=\"button\">View details</a>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("              <h3>Feature 2</h3>\n");
      out.write("              <img src=\"images/2.png\" alt=\"cs\" style=\"width:90%; height:200px;\" class=\"img-thumbnail\">\n");
      out.write("              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n");
      out.write("        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n");
      out.write("        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n");
      out.write("              <a class=\"btn btn-default\" role=\"button\">View details</a>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("              <h3>Feature 3</h3>\n");
      out.write("              <img src=\"images/3.png\" alt=\"cs\" style=\"width:90%; height:200px;\" class=\"img-thumbnail\">\n");
      out.write("              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n");
      out.write("        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n");
      out.write("        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n");
      out.write("              <a class=\"btn btn-default\" role=\"button\">View details</a>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("     \n");
      out.write("</div> \n");
      out.write("  <div class=\"row\" style=\"background: #151515; height: 80px; margin-top: 20px;\">\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("              Saurabh Kumar Verma\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-4\">\n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-4\">\n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
