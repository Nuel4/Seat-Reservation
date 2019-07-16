package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("               </table>-->\n");
      out.write("<div class=\"container\" style=\"display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;\">\n");
      out.write("    <div style=\"width:10%\"><img src=\"pic/logh.jpg\" style=\"width:100%\"></div>\n");
      out.write("    <ul style=\"list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%\" >\n");
      out.write("        <li><a href=\".jsp\">Home</a></li>\n");
      out.write("        <li><a href=\".jsp\">About Us</li>\n");
      out.write("        <li><a href=\".jsp\">Contact Us</li>\n");
      out.write("        <li><a href=\".jsp\"> Address</li>\n");
      out.write("        <li class=\"button\" style=\"background: yellow; padding:3px 15px; border-radius:5px\"><a href=\"login1.jsp\"  style=\"color:#000; text-decoration: none;\">Login</a></li>\n");
      out.write("        <li class=\"button\" style=\"background: yellow; padding:3px 15px; border-radius:5px\"><a href=\"register.jsp\" style=\"color:#000; text-decoration: none;\">Sign up</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("    <div class=\"backimg\" style=\"position: relative\">\n");
      out.write("        <div style=\"position: absolute; top: 0; left: 0; width: 100%; height:100%; background: rgba(0,0,0,.5)\"></div>\n");
      out.write("        <div class=\"hero_text\">\n");
      out.write("       \n");
      out.write("        <h1 style=\"font-size: 50px; color:white; align:left; margin: 0; line-height: 1; color: yellow;\">\n");
      out.write("           \n");
      out.write("            Welcome to bookcheap flight.com\n");
      out.write("        </h1>\n");
      out.write("         <p style=\"font-size: 18px; color:white; align:left;\">It promises to be a good experience getting your flight from us.</p>\n");
      out.write("         </div></div></div>\n");
      out.write(" \n");
      out.write("    </body>\n");
      out.write("        <p>\n");
      out.write("            Check-in\n");
      out.write("Flight status\n");
      out.write("My Bookings\n");
      out.write("\n");
      out.write("        </p>\n");
      out.write("       We use cookies so that we can offer you the best possible website experience. This includes cookies which are necessary for the operation of the website and to manage our corporate commercial objectives, as well as other cookies which are used solely for anonymous statistical purposes, for more comfortable website settings, or for the display of personalised content. You are free to decide which categories you would like to permit. Please note that depending on the settings you choose, the full functionality of the website may no longer be available. Further information can be found in our Privacy Policy.\n");
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
