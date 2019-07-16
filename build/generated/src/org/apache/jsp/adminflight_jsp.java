package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminflight_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            }\n");
      out.write("            .backimg{\n");
      out.write("                background-image: url(pic/plane3.png);\n");
      out.write("                background-color: gray;\n");
      out.write("                height: 900px;\n");
      out.write("                background-position: center;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("            .hero_text{\n");
      out.write("                text-align: center;\n");
      out.write("                position: absolute;\n");
      out.write("                top: 50%;\n");
      out.write("                left: 50%;\n");
      out.write("                transform: translate(-50%,-50%);\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            h3{color: yellow;}\n");
      out.write("            td{color: black;}\n");
      out.write("            \n");
      out.write("            input[type=\"submit\"]{\n");
      out.write("  padding:15px 35px;\n");
      out.write("  outline:none;\n");
      out.write("  border:None;\n");
      out.write("  background-color:#20c198;\n");
      out.write("  color:white;\n");
      out.write("  transition:all .3s ease-in-out;\n");
      out.write("}\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("        <body style=\"padding:0; margin: 0\">\n");
      out.write(" <br><br>\n");
      out.write("    <div class=\"backimg\">\n");
      out.write("        <div class=\"hero_text\"></div>\n");
      out.write("    </head>\n");
      out.write("   \n");
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
      out.write("         <li class=\"button\" style=\"background: black; padding:3px 15px; border-radius:5px\"><a href=\"index.html\"  style=\"color:red; text-decoration: none;\">Logout</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("         <h2 align=\"right\"><a href=\"adminduties.jsp\"> PREVIOUS PAGE</a></h2>\n");
      out.write("       <form method=\"post\" action=\"adminflight2.jsp\">\n");
      out.write("           <h2 align=\"center\"> SET FLIGHT SCHEDULE</h3>\n");
      out.write("            <table align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                <td> <input type=\"text\" name=\"flid\" size=\"20\" placeholder=\" flight id \"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> <input type=\"text\" name=\"flnam\" placeholder=\"flight name \"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> <input type=\"text\" name=\"flsos\" placeholder=\"source \"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> <input type=\"text\" name=\"des\" placeholder=\"destination \"></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td> <input type=\"text\" name=\"kilo\" placeholder=\"kilometers \"></td>\n");
      out.write("             </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> <input type=\"date\" name=\"dd\" placeholder=\"date \"></td>\n");
      out.write("            </tr>\n");
      out.write("            <div>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                <td>Boarding Time<input type=\"time\" name=\"tym\" placeholder=\"bording time \"></td>\n");
      out.write("            </tr>\n");
      out.write("            </div>\n");
      out.write("            <tr>\n");
      out.write("                <td>Take Off Time <input type=\"time\" name=\"take\" placeholder=\"take off time \"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Arrival Time <input type=\"time\" name=\"arrival\" placeholder=\"arrival time \"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Hours Spent <input type=\"text\" name=\"hr\" size=\"10\" placeholder=\"total hours \"></td>\n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("           <div>\n");
      out.write("               <tr><br><br>\n");
      out.write("           <center>  <td> <input type=\"submit\" name=\"submit\" value=\"ENTER \"></td>\n");
      out.write("               \n");
      out.write("           </center>\n");
      out.write("           </tr>\n");
      out.write("           </div>\n");
      out.write("        </form>\n");
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
