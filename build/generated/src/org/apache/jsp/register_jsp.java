package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<style>\n");
      out.write("* {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("body{\n");
      out.write("    background-image: url(pic/air.jpg);\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=text], select {\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 12px;\n");
      out.write("  border: 1px solid #ccc;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  resize: vertical;\n");
      out.write("}\n");
      out.write("h1{\n");
      out.write("    padding: 12px 12px 12px 0;\n");
      out.write("    color: blue;\n");
      out.write("}\n");
      out.write("\n");
      out.write("label {\n");
      out.write("  padding: 12px 12px 12px 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  color: blue;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=submit] {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("  padding: 12px 20px;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  float: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=submit]:hover {\n");
      out.write("  background-color: #45a049;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container {\n");
      out.write("  border-radius: 5px;\n");
      out.write("  background-color: #f2f2f2;\n");
      out.write("  padding: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".col-25 {\n");
      out.write("  float: left;\n");
      out.write("  width: 25%;\n");
      out.write("  margin-top: 6px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".col-75 {\n");
      out.write("  float: left;\n");
      out.write("  width: 75%;\n");
      out.write("  margin-top: 6px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after the columns */\n");
      out.write(".row:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */\n");
      out.write("@media screen and (max-width: 600px) {\n");
      out.write("  .col-25, .col-75, input[type=submit] {\n");
      out.write("    width: 100%;\n");
      out.write("    margin-top: 0;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write(" <body style=\"padding:0; margin: 0\">\n");
      out.write("\n");
      out.write("<div class=\"container\" style=\"display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;\">\n");
      out.write("     <div style=\"width:10%\"><img src=\"pic/logh.jpg\" style=\"width:100%\"></div>\n");
      out.write("    <ul style=\"list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%\" >\n");
      out.write("        <li><a href=\".jsp\">Home</a></li>\n");
      out.write("        <li><a href=\".jsp\">About Us</li>\n");
      out.write("        <li><a href=\".jsp\">Contact Us</li>\n");
      out.write("        <li><a href=\".jsp\"> Address</li>\n");
      out.write("        <li><a href=\"index.html\">LOGOUT</a>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("     \n");
      out.write("    <form method=\"post\" action=\"insertinfo.jsp\">\n");
      out.write("        <h1 align=\"center\">REGISTER </h1> \n");
      out.write("         <div style=\"width:30%; float: none;display: flex;\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-25\">\n");
      out.write("        <label for=\"cusid\">ID CARD</label>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-75\">\n");
      out.write("        <input type=\"text\" id=\"fid\" name=\"card\" placeholder=\"Passport Id.\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-25\">\n");
      out.write("        <label for=\"lname\">FULL NAME</label>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-75\">\n");
      out.write("        <input type=\"text\" id=\"lname\" name=\"name\" placeholder=\"Name\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-25\">\n");
      out.write("        <label for=\"address\">ADDRESS</label>\n");
      out.write("      </div>\n");
      out.write("        <div class=\"col-75\">\n");
      out.write("        <input type=\"text\" id=\"lname\" name=\"ad\" placeholder=\"Address\">\n");
      out.write("      </div>\n");
      out.write("     \n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-25\">\n");
      out.write("        <label for=\"phone\">PHONE NO</label>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-75\">\n");
      out.write("        <input type=\"text\" id=\"lname\" name=\"ph\" placeholder=\"Phone No\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-25\">\n");
      out.write("        <label for=\"email\">EMAIL</label>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-75\">\n");
      out.write("        <input type=\"emial\" id=\"lname\" name=\"em\" placeholder=\"Email\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-25\">\n");
      out.write("        <label for=\"relate\">RELATIVE</label>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-75\">\n");
      out.write("        <input type=\"text\" id=\"lname\" name=\"rela\" placeholder=\"Relation\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-25\">\n");
      out.write("        <label for=\"relphone\">RELATIVE PHONE NO</label>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-75\">\n");
      out.write("        <input type=\"text\" id=\"lname\" name=\"rph\" placeholder=\"Relative Phone No\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("            \n");
      out.write("</div> \n");
      out.write("        </center>\n");
      out.write("        </\n");
      out.write(" <center> <div class=\"row\">\n");
      out.write("      <input type=\"submit\" value=\"SUBMIT\">\n");
      out.write("      <input type=\"reset\" name=\"reset\" value=\"RESET\">\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write(" </center>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("<tr>\n");
      out.write("               \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
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
