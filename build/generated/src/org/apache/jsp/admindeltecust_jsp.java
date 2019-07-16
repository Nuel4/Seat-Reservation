package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admindeltecust_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <body style=\"padding:0; margin: 0\">\n");
      out.write("\n");
      out.write("<div class=\"container\" style=\"display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;\">\n");
      out.write("    <div style=\"width:10%\"><img src=\"pic/logh.jpg\" style=\"width:100%\"></div>\n");
      out.write("    <ul style=\"list-style-type:none; margin:0; display:flex; justify-content: space-between; width:80%\" >\n");
      out.write("        <li><a href=\"adminflight.jsp\" style=\"color: red\">Schedule Flight</a></li>\n");
      out.write("        <li><a href=\"ticketclass.jsp\" style=\"color: red\">SET FARES</a></li>\n");
      out.write("        <li><a href=\"adminupdate.jsp\" style=\"color: red\">UPDATE FARE</a></li>\n");
      out.write("        <li><a href=\"flight.jsp\" style=\"color: red\"> VIEW AVAILABLE FLIGHT</a></li>\n");
      out.write("        <li><a href=\"admindelete.jsp\" style=\"color: red\"> DELETE</a></li>\n");
      out.write("        <li><a href=\"admincustomerinfo.jsp\" style=\"color: red\"> CUSTOMER DETAILS</a></li>\n");
      out.write("         <li class=\"button\" style=\"background: black; padding:3px 15px; border-radius:5px\"><a href=\"index.html\"  style=\"color:red; text-decoration: none;\">Login</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("        <h1 align=\"center\"> CANCELLATION PAGE</h1>\n");
      out.write("        <h2 align=\"right\"><a href=\"adminduties.jsp\">BACK</a></h2>\n");
      out.write("        \n");
      out.write("         <form method=\"post\" action=\"admindelecust.jsp\">\n");
      out.write("             <table align=\"center\">\n");
      out.write("                 <h3 align=\"center\">ENTER THE PASSENGER'S ID TO  DELETED / CANCELED </h3>\n");
      out.write("                 <tr>\n");
      out.write("                     <td> <label> PASSENGER ID</label></td>\n");
      out.write("                     <td> <input type=\"text\" name=\"digit\"></td>\n");
      out.write("                 </tr>\n");
      out.write("                  \n");
      out.write("            <br>\n");
      out.write("            <tr>\n");
      out.write("                <td> <input type=\"submit\" name=\"submit\" value=\"DELETE\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <br>\n");
      out.write("             </table>\n");
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
