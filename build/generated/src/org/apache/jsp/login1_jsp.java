package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <style>\n");
      out.write("*{\n");
      out.write("  margin:0;\n");
      out.write("  padding:0;\n");
      out.write("  box-sizing:border-box;\n");
      out.write("}\n");
      out.write(".wrapper{\n");
      out.write("  min-height:100vh;\n");
      out.write("  background-image: url(pic/air.jpg);\n");
      out.write("  background-repeat: no-repeat;\n");
      out.write("  background-size: cover;\n");
      out.write("  background-color:skyblue;\n");
      out.write(" \n");
      out.write("  font-family: 'Open Sans', sans-serif;\n");
      out.write("  padding-top:90px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container1{\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write(".container{\n");
      out.write("  max-width:300px;\n");
      out.write("  margin:0 auto;\n");
      out.write("  background-color: white;\n");
      out.write("  text-align:center;\n");
      out.write("  padding:50px 0;\n");
      out.write("  box-shadow:0 0 20px rgba(0,0,0,.4);\n");
      out.write("  border-radius:3px;\n");
      out.write("}\n");
      out.write(".social-login{\n");
      out.write("  display:block;\n");
      out.write("  width:50%;\n");
      out.write("  margin: 5px auto;\n");
      out.write("  text-decoration:none;\n");
      out.write("  padding:10px 15px;\n");
      out.write("  color:#fff;\n");
      out.write("  border-radius:3px;\n");
      out.write("  margin-bottom:10px;\n");
      out.write("  transition:all .3s ease-in-out;\n");
      out.write("}\n");
      out.write(".social-login:hover{\n");
      out.write("    box-shadow:0 10px 15px -5px rgba(0,0,0,0.4);\n");
      out.write("}\n");
      out.write("a.fb-login{\n");
      out.write("  background-color:#3B5998;\n");
      out.write("}\n");
      out.write("a.google-login{\n");
      out.write("  background-color:#db4437;\n");
      out.write("}\n");
      out.write("form{\n");
      out.write("  max-width:250px;\n");
      out.write("  margin:0 auto;\n");
      out.write("  text-align:left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("p.seperator{\n");
      out.write("  margin:25px;\n");
      out.write("}\n");
      out.write("div.group{\n");
      out.write("  margin-top:15px;\n");
      out.write("}\n");
      out.write("label{\n");
      out.write("  display:block;\n");
      out.write("  margin-bottom:5px;\n");
      out.write(" \n");
      out.write("}\n");
      out.write("div.group input{\n");
      out.write("  width:100%;\n");
      out.write("  padding:10px 4px;\n");
      out.write("  outline:none;\n");
      out.write("}\n");
      out.write("a.forget-link{\n");
      out.write("  color:black;\n");
      out.write("  display:block;\n");
      out.write("  margin:10px 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=\"submit\"]{\n");
      out.write("  padding:15px 35px;\n");
      out.write("  outline:none;\n");
      out.write("  border:None;\n");
      out.write("  background-color:#20c198;\n");
      out.write("  color:white;\n");
      out.write("  transition:all .3s ease-in-out;\n");
      out.write("}\n");
      out.write("input[type=\"submit\"]:hover{\n");
      out.write("  cursor:pointer;\n");
      out.write("  box-shadow:0 10px 15px -5px rgba(0,0,0,0.4);\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("    <body style=\"padding:0; margin:0\">\n");
      out.write("        <div class=\"container1\" style=\"display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 1rem;\">\n");
      out.write("                <div style=\"width:10%;\"><img src=\"pic/logh.jpg\" style=\"width:100%;\"></div>\n");
      out.write("            <ul style=\"list-style-type:none; margin:0; display:flex; justify-content: space-between; width: 40%;\">\n");
      out.write("                <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"about.jsp\">About Us</li>\n");
      out.write("                <li><a href=\"contact.jsp\">Contact Us</li>\n");
      out.write("                <li><a href=\"address.jsp\"> Address</li>\n");
      out.write("                <li class=\"button\" style=\"background: yellow; padding:3px 15px; border-radius:5px\"><a href=\"register.jsp\" style=\"color:#000; text-decoration: none;\">Sign up</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"wrapper\" >\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <a href=\"\" class=\"fb-login social-login\">\n");
      out.write("      Login with Facebook\n");
      out.write("    </a>\n");
      out.write("     <a href=\"\" class=\"google-login social-login\">\n");
      out.write("      Login with Google\n");
      out.write("    </a>\n");
      out.write("    <p class=\"seperator\" >-OR-</p>\n");
      out.write("    <form method=\"post\" action=\"login.jsp\">\n");
      out.write("      <div class=\"group\">\n");
      out.write("        <label for=\"user id\">USER ID:</label>\n");
      out.write("        <input type=\"text\" id=\"em\" name=\"reg\" placeholder=\"Passenger's ID\">\n");
      out.write("      </div>\n");
      out.write("      <div class=\"group\">\n");
      out.write("        <label>Password:</label>\n");
      out.write("        <input type=\"text\"  name=\"pas\" placeholder=\"NAME\">\n");
      out.write("      </div>\n");
      out.write("      <a href=\"passwd.jsp\" class=\"forget-link\">Forgot password?</a>\n");
      out.write("      <input type=\"submit\" value=\"Login\" id=\"submit\">\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("    <li class=\"button\" style=\"background: yellow; padding:3px 15px; border-radius:5px\"><a href=\"register.jsp\" style=\"color:#000; text-decoration: none;\">s</a></li>     \n");
      out.write("        \n");
      out.write("        \n");
      out.write("     \n");
      out.write("       \n");
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
