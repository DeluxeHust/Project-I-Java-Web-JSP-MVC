<%-- 
    Document   : checkEmail
    Created on : Dec 22, 2016, 11:11:32 PM
    Author     : linhphan
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/View/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/View/css/style.css"/>

        <script type ="text/javascript" src="${pageContext.request.contextPath}/View/js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/View/bootstrap/js/bootstrap.min.js"> </script>

        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"> 

    </head>
    <%
      String result ="" ;
      String scriptResult ="" ;
    if(request.getParameter("result")!= null) {
            result = request.getParameter("result");
    }
    
    if(result.equals("false-code")) {
            scriptResult ="alert('Nhập sai mã!')";
        }
     
    %>
    <body>
        <script>
            <%=scriptResult %> ;
        </script>
        
       <jsp:include page="header.jsp"></jsp:include>
       
        <form action="CheckMailServlet" method="POST" role="form">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Một Email đã được gửi cho bạn. Hãy nhập code từ email để hoàn tất quá trình đăng ký!</h4>
              </div>
              <div class="modal-body">

                <div class="form-group">
                  <label for="">Nhập code</label>
                  <input type="text" class="form-control" id="" placeholder="code" required="required" name="code-submit">
                </div>
                
              </div>

              <div class="modal-footer">
                
                <input type="submit" class="btn btn-primary" value="Xác nhận" name="submit">
              </div>
            </div>
          </div>
        </form>
    </body>
</html>