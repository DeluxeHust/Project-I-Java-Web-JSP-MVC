package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class checkEmail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Đăng nhập</title>\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/View/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel =\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/View/css/style.css\"/>\n");
      out.write("\n");
      out.write("        <script type =\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/View/js/jquery-3.1.1.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/View/bootstrap/js/bootstrap.min.js\"> </script>\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lobster\" rel=\"stylesheet\"> \n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("       \n");
      out.write("        <form action=\"CheckMailServlet\" method=\"POST\" role=\"form\">\n");
      out.write("          <div class=\"modal-dialog\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("              <div class=\"modal-header\">\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"></button>\n");
      out.write("                <h4 class=\"modal-title\">Một Email đã được gửi cho bạn. Hãy nhập code từ email để hoàn tất quá trình đăng ký!</h4>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"modal-body\">\n");
      out.write("\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <label for=\"\">Nhập code</label>\n");
      out.write("                  <input type=\"text\" class=\"form-control\" id=\"\" placeholder=\"code\" required=\"required\" name=\"code-submit\">\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"modal-footer\">\n");
      out.write("                \n");
      out.write("                <input type=\"submit\" class=\"btn btn-primary\" value=\"Xác nhận\" name=\"submit\">\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
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
