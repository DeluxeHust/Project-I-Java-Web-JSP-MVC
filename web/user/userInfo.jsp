<%-- 
    Document   : userInfo
    Created on : Dec 19, 2016, 11:55:15 AM
    Author     : linhphan
--%>

<%@page import="model.CategoryData"%>
<%@page import="model.Category"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Thông tin Người dùng</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/View/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/View/css/style.css"/>

    <script type ="text/javascript" src="${pageContext.request.contextPath}/View/js/jquery-3.1.1.min.js"></script>
    <script type ="text/javascript" src="${pageContext.request.contextPath}/View/js/shopping-cart.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/View/bootstrap/js/bootstrap.min.js"> </script>

    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"> 
     
  </head>
    <%
        User user = null;
        
        if (session.getAttribute("user") != null) {
            user = (User) session.getAttribute("user");
        }
    
    %>
    
    <%if (user != null) {%>
    <body>
        
        <jsp:include page="userheader.jsp"></jsp:include>
        <!-- Content -->
      <div class = "container">
        
        <div class="text-center">
           <h1> Thông tin tài khoản </h1>
        </div>

        <div class="mainContent">

          <div class="row">
            <div class="col-md-2 well banner-left">
              <div class="nav nav-pills nav-stacked">
                <%
                    for(Category c : CategoryData.getCategoryList()) {
                %>
                
                <li class="categoryLeft" id="<%=c.getCategoryID()%>" ><a href="../index.jsp?category=<%=c.getCategoryID() %>"> <%= c.getCategoryName() %> </a></li>
                
                <%
                    }
                %>
              </div>
            </div> <!-- End md-2 -->
            <div class="col-md-7">
             
              <div id="information">
                   <br><span class="nameTitle"> Tài khoản </span>       : ${user.username}
                   <br><span class="nameTitle"> ID tài khoản </span>    : ${user.userID}
                   <br><span class="nameTitle"> Họ Tên </span>          : ${user.fullName}
                   <br><span class="nameTitle"> Địa chỉ </span>         : ${user.address}
                   <br><span class="nameTitle"> Email  </span>          : ${user.email}
                   <br><span class="nameTitle"> Số điện thoại  </span>  : ${user.phone}
              </div>
            </div> <!-- end col-md-10 -->
        <div class="col-md-3">
           <a href="#modal-edit" data-toggle="modal" class="btn btn-lg btn-success">Cập nhật thông tin</a>
        </div>
           
      </div> <!-- End row  -->

          <!-- modal-edit-->
            <div class="modal fade" id="modal-edit">
                <form action="../UserServlet" method="POST" role="form">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Cập nhật thông tin người dùng</h4>

                      </div>
                      <div class="modal-body">

                        <div class="form-group">
                          <label for="">Họ và tên</label>
                          <input type="text" class="form-control" id="" value="<%=user.getFullName() %>" required="required" name="newName">
                        </div>
                        
                        <div class="form-group">
                          <label for="">Địa chỉ </label>
                          <input type="text" class="form-control" id="" value="<%=user.getAddress() %>" required="required" name="newAddress">
                        </div>
                        
                        <div class="form-group">
                          <label for="">Số điện thoại </label>
                          <input type="number" class="form-control" id="" value="<%=user.getPhone() %>" required="required" name="newPhone">
                        </div>
                        <div class="form-group">
                          <label for="">Mật khẩu </label>
                          <input type="password" class="form-control" required="required" name="newpassword">
                        </div>
                      </div>

                      <div class="modal-footer">

                        <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
                        <input type="hidden" name="command" value="update">
                        <input type="hidden" name="userId" value="<%=user.getUserID() %>">
                        <input type="submit" class="btn btn-primary" value="Hoàn tất" name="edit">
                      </div>
                    </div>
                  </div>
                </form>
            </div> <!-- End modal -->
      
      </div> <!-- End mainContent -->
      </div> <!-- End Container -->
        
  
    </body>
    <% } else { %>
    <script> alert('Bạn chưa đăng nhập!'); window.location = '${pageContext.request.contextPath}/index.jsp' ; </script>
    <% } %>
</html>
