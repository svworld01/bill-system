package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;

public final class addBranch_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/admin/header.html");
  }

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
      out.write("<!DOCTYPE html> \r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\"/>\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n");
      out.write("    <meta name=\"description\" content=\"\" />\r\n");
      out.write("    <meta name=\"author\" content=\"\" />\r\n");
      out.write("    <title>Payment Billing System</title>\r\n");
      out.write("    <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("    <link href=\"../css/main.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"../css/responsive.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<script src=\"../js/jquery.js\"></script>\r\n");
      out.write("  <script src=\"../js/bootstrap.min.js\"></script>\r\n");
      out.write("  <style type=\"text/css\">\r\n");
      out.write("\t\tbody{margin-top:100px;}\r\n");
      out.write("\t\t\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    \r\n");
      out.write("<header id=\"header\">\r\n");
      out.write("\r\n");
      out.write("<!----------- header navbar--------->\r\n");
      out.write("<nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"banner\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                 <div class=\"navbar-header\">\r\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                     <a class=\"navbar-brand\" href=\"#\"><img src=\"../images/logo.png\" alt=\"logo\"></a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"collapse navbar-collapse navbar-right\">\r\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                        <li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("                        <li><a href=\"listBranch.jsp\">Branches</a></li> \r\n");
      out.write("                        <li><a href=\"listAccountants.jsp\">Accountants</a></li>\r\n");
      out.write("                        <li><a href=\"listStudents.jsp\">Students</a></li>\r\n");
      out.write("                        <li><a href=\"listTrainers.jsp\">Trainers</a></li> \r\n");
      out.write("                        <li><a href=\"help.html\">Logout</a></li> \r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("</header>\r\n");
      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write("<div class=\"container\">\n");
      out.write("    <h1>Add a Branch</h1>\n");
      out.write("    <p>you can a new branch in  your branch institute.</p>\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-2\">\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-8\">\n");
      out.write("        <form method=\"post\" action=\"updateBranch.jsp\">\n");
      out.write("            <table width=\"100%\" class=\"table table-hover\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th colspan=\"2\">you are going to add a new branch...<th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td style=\"width: 30%\"><label for=\"b_name\">Branch Name:</label></td>\n");
      out.write("                    <td style=\"width: 70%\"><input type=\"text\" name=\"b_name\" id=\"b_name\" class=\"form-control\" required=\"required\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td style=\"width: 30%\"><label for=\"b_acc\">Branch Accountant: </label></td>\n");
      out.write("                    <td style=\"width: 70%\"><input type=\"text\" class=\"form-control\" id=\"b_acc\" required=\"required\" name=\"b_acc\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td style=\"width: 30%\"><label for=\"b_trainer\">Branch Trainer: </label></td>\n");
      out.write("                    <td style=\"width: 70%\"><input type=\"text\" class=\"form-control\" id=\"b_trainer\" required=\"required\" name=\"b_trainer\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    \n");
      out.write("                    <td colspan=\"2\" style=\"text-align: right;\">\n");
      out.write("                       <input type=\"submit\" value=\"Update\" class=\"btn btn-primary\">\n");
      out.write("                        <a href=\"listBranch.jsp\" class=\"btn btn-link\">back</a></td>\n");
      out.write("                </tr>\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-2\"></div>\n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("</div>                  \n");
      out.write("    </body> \n");
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
