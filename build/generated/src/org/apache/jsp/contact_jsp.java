package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   <body style=\"padding:0; margin: 0\">\n");
      out.write("\n");
      out.write("<div class=\"container\" style=\"display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;\">\n");
      out.write("    <div style=\"width:10%\"><img src=\"pic/logh.jpg\" style=\"width:100%\"></div>\n");
      out.write("    <ul style=\"list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%\" >\n");
      out.write("        <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"about.jsp\">About Us</li>\n");
      out.write("       \n");
      out.write("        <li><a href=\"address.jsp\"> Address</li>\n");
      out.write("      <li class=\"button\" style=\"background: black; padding:3px 15px; border-radius:5px\"><a href=\"index.html\" style=\"color:red; text-decoration: none;\">logout</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("       <div align=\"center\">\n");
      out.write("               <h1 style=\"color: black\"> Contact:</h1>\n");
      out.write("                Contact Details<br> 1800 102 5838<br>\n");
      out.write("               <div>\n");
      out.write("                   <p>Monday  00:00 -  24:00</p>\n");
      out.write("               </div>\n");
      out.write("               <div>\n");
      out.write("                   <td> Tuesday   00:00 - 24:00</td>\n");
      out.write("               </div>\n");
      out.write("               <div>\n");
      out.write("                    <p> Wednesday  00:00 - 24:00</p>\n");
      out.write("               </div>\n");
      out.write("               <div>\n");
      out.write("                   <td> Thursday  00:00 - 24:00</td>\n");
      out.write("               </div>\n");
      out.write("               <div>\n");
      out.write("                    <p> Friday  00:00 - 24:00</p>\n");
      out.write("               </div>\n");
      out.write("               <div>\n");
      out.write("                   <td> Saturday  00:00 - 24:00</td>\n");
      out.write("               </div>\n");
      out.write("               <div>\n");
      out.write("                    <p> Sunday  00:00 - 24:00</p>\n");
      out.write("                  \n");
      out.write("               </div>\n");
      out.write("          \n");
      out.write("   </div>\n");
      out.write("      Or\n");
      out.write("      <div>\n");
      out.write("          <label>First name</label>\n");
      out.write("          <input type=\"text\" name=\"nam\" placeholder=\"first name\">\n");
      out.write("      </div>\n");
      out.write("      <div>\n");
      out.write("          <label>Last name</label>\n");
      out.write("          <input type=\"text\" name=\"nam\" placeholder=\"Surname\">\n");
      out.write("      </div>\n");
      out.write("      <div>\n");
      out.write("          <label>Phone no</label>\n");
      out.write("          <input type=\"text\" name=\"nam\" placeholder=\"phone number\">\n");
      out.write("      </div>\n");
      out.write("      <div>\n");
      out.write("          <label>Email</label>\n");
      out.write("          <input type=\"email\" name=\"nam\" placeholder=\"email\">\n");
      out.write("      </div>\n");
      out.write("      <div>\n");
      out.write("          <label>Complaint</label>\n");
      out.write("          <input type=\"textarea\" name=\"nam\" placeholder=\" type your message\">\n");
      out.write("      </div>\n");
      out.write("      <div>\n");
      out.write("          <input type=\"submit\" name=\"submit\" value=\"Submit\">\n");
      out.write("      </div>\n");
      out.write("\n");
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
