package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class booking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            ResultSet rs1,rs2,rs3;
            Statement stmt;
            String cusid,cname;
            int f=0;
            
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
      out.write("       <style type=\"text/css\">\n");
      out.write("            body{\n");
      out.write("                margin: 0;\n");
      out.write("                font-family: Arial, Helvetica, sans-serif;\n");
      out.write("            }\n");
      out.write("            .backimg{\n");
      out.write("                background-image: url(pic/plane3.png);\n");
      out.write("                background-color: gray;\n");
      out.write("                height: 500px;\n");
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
      out.write("            body{\n");
      out.write("                background-image: url(pic/plane3.png);\n");
      out.write("                background-color: gray;\n");
      out.write("                height: 500px;\n");
      out.write("                background-position: center;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"padding:0; margin: 0\">\n");
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
      out.write("</div>\n");
      out.write("        \n");
      out.write("        <br><br><br><br>\n");
      out.write("       \n");
      out.write("       ");
      out.write("\n");
      out.write("        ");
 
              String cumtomerno =session.getAttribute("regno").toString();  
            
           //  String card = request.getParameter("pa");
             
              String cname  = request.getParameter("na");
               String ctype = request.getParameter("ty");
                String cdate = request.getParameter("ad");
                 String cno = request.getParameter("ph");
                  String vv = request.getParameter("em");
                  String amt = request.getParameter("rel");
                  
                  
                  
               try
            {
     
Class.forName("com.mysql.jdbc.Driver");
Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/airticketing","root","root");
stmt=con.createStatement(); 

if(cname.equals("") || ctype.equals("") || cdate.equals("") || cno.equals("") || vv.equals("") || amt.equals("") )
{
    out.print("<h1 style='color:red;'>No field should be empty</h1>");
    
}
    else
    {
stmt.execute("insert  into bills values ('"+cumtomerno+"','"+cname+"','"+ctype+"','"+cdate+"','"+cno+"','"+vv+"','"+amt+"')");

rs3=stmt.executeQuery("select  * from customerinfo where id ='"+cumtomerno+"'");
if(rs3.next())
{
  String em = rs3.getString("email");
  out.print("<h3 style='color:red'> Your flight reservation is complete and your confirmation paper is sent the emial u provided.</h3><br>");
  out.print("<a href='recipt.jsp'>"+"<h1 style='color:white'>"+ em);
}
            }
            }
            
               catch(Exception e)
               {
                 e.printStackTrace();
               }
               
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
