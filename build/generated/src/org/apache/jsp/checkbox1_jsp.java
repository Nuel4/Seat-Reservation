package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class checkbox1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <style type=\"text/css\">\n");
      out.write("            body{\n");
      out.write("                margin: 0;\n");
      out.write("                font-family: Arial, Helvetica, sans-serif;\n");
      out.write("             background-color: white;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            .backimg{\n");
      out.write("                background-image: url(pic/air.jpg);\n");
      out.write("                background-color: gray;\n");
      out.write("                height: 900px;\n");
      out.write("                background-position: center;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                \n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("            .hero_text{\n");
      out.write("                text-align: center;\n");
      out.write("                position: absolute;\n");
      out.write("                top: 50%;\n");
      out.write("                left: 50%;\n");
      out.write("                transform: translate(-50%,-50%);\n");
      out.write("                color: white;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            p{\n");
      out.write("    padding: 12px 12px 12px 0;\n");
      out.write("    color: red;\n");
      out.write("}\n");
      out.write("input[type=submit] {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("  padding: 12px 20px;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  float: center;\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"padding:0; margin: 0\">\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\" style=\"display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;\">\n");
      out.write("    <div style=\"width:10%\"><img src=\"pic/logh.jpg\" style=\"width:100%\"></div>\n");
      out.write("    <ul style=\"list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%\" >\n");
      out.write("        <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"about.jsp\">About Us</li>\n");
      out.write("        <li><a href=\"contact.jsp\">Contact Us</li>\n");
      out.write("        <li><a href=\"address.jsp\"> Address</li>\n");
      out.write("        <li class=\"button\" style=\"background: black; padding:3px 15px; border-radius:5px\"><a href=\"index.html\"  style=\"color:red; text-decoration: none;\">Logout</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("       <form method=\"post\" action=\"checkbox2.jsp\">\n");
      out.write("           <div align=\"center\">  <br><br><h2> SELECT SEAT NUMBER</h2>\n");
      out.write("        <tr>\n");
      out.write("              \n");
      out.write("              <input type=\"checkbox\" name=\"seat\" value=\"seat1\">1</label>\n");
      out.write("                <input type=\"checkbox\" name=\"seat\" value=\"seat2\">2</label>\n");
      out.write("                  <input type=\"checkbox\" name=\"seat\" value=\"seat3\">3</label>\n");
      out.write("                    <input type=\"checkbox\" name=\"seat\" value=\"seat4\">4</label>\n");
      out.write("                     <input type=\"checkbox\" name=\"seat\" value=\"seat5\">5</label>\n");
      out.write("                      <input type=\"checkbox\" name=\"seat\" value=\"seat6\">6</label>\n");
      out.write("                       <input type=\"checkbox\" name=\"seat\" value=\"seat7\">7</label>\n");
      out.write("                        <input type=\"checkbox\" name=\"seat\" value=\"seat8\">8</label>\n");
      out.write("                        <input type=\"checkbox\" name=\"seat\" value=\"seat9\">9</label>\n");
      out.write("                        <input type=\"checkbox\" name=\"seat\" value=\"seat10\">10</label>\n");
      out.write("           </tr>\n");
      out.write("           <br><br><label><input type=\"submit\" name=\"submit\" value=\"submit\"></label></div>\n");
      out.write("    </form>\n");
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
