package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class booking1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            ResultSet rs1,rs2,rs3,rs4;
            Statement stmt;
           int money;
            
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            input{\n");
      out.write("                color: green;\n");
      out.write("              \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("   <body style=\"padding:0; margin: 0\">\n");
      out.write("\n");
      out.write("<div class=\"container\" style=\"display: flex; justify-content: space-between; align-items: center; background-color:skyblue; padding:10px 2rem;\">\n");
      out.write("   <div style=\"width:10%\"><img src=\"pic/logh.jpg\" style=\"width:100%\"></div>\n");
      out.write("    <ul style=\"list-style-type:none; margin:0; display:flex; justify-content: space-between; width:40%\" >\n");
      out.write("        <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"about.jsp\">About Us</li>\n");
      out.write("        <li><a href=\"contact.jsp\">Contact Us</li>\n");
      out.write("        <li><a href=\"address.jsp\"> Address</li>\n");
      out.write("        <li class=\"button\" style=\"background: black; padding:3px 15px; border-radius:5px\"><a href=\"index.html\"  style=\"color:red; text-decoration: none;\">Login</a></li>\n");
      out.write("    </ul>\n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("    ");
      out.write("\n");
      out.write("        ");

              String cumtomerno =session.getAttribute("regno").toString();  
             
               try
            {
     
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 
rs3=stmt.executeQuery("select  * from customerinfo where id ='"+cumtomerno+"'");
if(rs3.next())
{
    money=rs3.getInt("totalfare");
}
            }
catch(Exception e)
{
        
        }
               
      out.write("\n");
      out.write("               \n");
      out.write("    <body>\n");
      out.write("       <h1 align=\"center\">CARD BILLING INFORMATION</h1> \n");
      out.write("       \n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <form method=\"post\" action=\"booking.jsp\">\n");
      out.write("           \n");
      out.write("        <table align=\"center\">\n");
      out.write("           \n");
      out.write("            <div align=\"center\">CUSTOMERS DETAILS</div>\n");
      out.write("            \n");
      out.write("             <div>\n");
      out.write("                <td> <image src=\"pic/pay1.png\">\n");
      out.write("                 <input type=\"radio\" name=\"pa\" value=\"pt\"></td>\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <td><image src=\"pic/master.png\">\n");
      out.write("                    <input type=\"radio\" name=\"pa\" value=\"ma\"></td>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <td><image src=\"pic/visa.jpg\">\n");
      out.write("                     <input type=\"radio\" name=\"pa\" value=\"vs\"></td>\n");
      out.write("                </div>\n");
      out.write("        </table>   \n");
      out.write("            <center> <table>\n");
      out.write("            <div>\n");
      out.write("                <tr>\n");
      out.write("                <td><input type=\"text\" name=\"na\" size=\"25\" placeholder=\"CARD NAME\" >\n");
      out.write("          \n");
      out.write("          \n");
      out.write("               </td><td><input type=\"text\" name=\"ty\" size=\"25\" placeholder=\"CARD TYPE\">\n");
      out.write("                </tr>\n");
      out.write("            </div>\n");
      out.write("                <div>\n");
      out.write("                    <tr>\n");
      out.write("                   <td><input type=\"date\" name=\"ad\" size=\"25\" placeholder=\"EXPERING DATE\"></td>\n");
      out.write("            \n");
      out.write("      \n");
      out.write("                   <td><input type=\"text\" name=\"ph\" size=\"25\" placeholder=\"CARD NUMBER\"></td></tr>\n");
      out.write("                </div>\n");
      out.write("            <div>\n");
      out.write("               <tr>\n");
      out.write("                   <td><input type=\"text\" name=\"em\" size=\"25\" placeholder=\"CVV\">\n");
      out.write("               \n");
      out.write("                <td><input type=\"text\" name=\"rel\" size=\"25\"  placeholder=\"");
      out.print(money);
      out.write("\"></td>\n");
      out.write("               </tr></div>\n");
      out.write("               \n");
      out.write("            </table>\n");
      out.write("            </center>\n");
      out.write("                \n");
      out.write("         \n");
      out.write("            \n");
      out.write("               <div align=\"center\">\n");
      out.write("                   <br><br>\n");
      out.write("                &nbsp;&nbsp;<td> <input type=\"SUBMIT\" name=\"SUBMIT\" value=\"SUBMIT\">\n");
      out.write("                <input type=\"reset\" name=\"reset\" value=\"RESET\"></td>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("               <div></div>\n");
      out.write("               <div></div>\n");
      out.write("               \n");
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
