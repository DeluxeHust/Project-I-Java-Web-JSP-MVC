<%-- 
    Document   : managerUser
    Created on : Dec 20, 2016, 1:23:21 AM
    Author     : linhphan
--%>

<%@page import="model.Admin"%>
<%@page import="model.BillData"%>
<%@page import="model.Bill"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý hóa đơn</title>
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/View/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/View/css/style.css"/>

        <script type ="text/javascript" src="${pageContext.request.contextPath}/View/js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/View/bootstrap/js/bootstrap.min.js"> </script>

        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"> 

    </head>
    <%
        Admin admin = (Admin) session.getAttribute("admin") ;
        if(admin == null) {
            response.sendRedirect("../index.jsp");
        }
        
        String scriptResult ="";
        if(request.getParameter("error") !=null) {
            String error = "Có lỗi: " + request.getParameter("error");
            scriptResult = "alert('"+error+"')";
       }
        
        
    %>
    <body>
        <script>
            <%=scriptResult %> ;
        </script>
        
        <jsp:include page="adminHeader.jsp"></jsp:include>
        
        <div class="container">
            <!-- Content -->
            <div class = "content">

              <div class="row">
                <div class="col-md-2 well">
                  <jsp:include page="navleft.jsp"></jsp:include>
                </div> <!-- End md-2 -->

                <!-- user review-->
                <div class="col-md-10 well">
                <h1> Quản lý hóa đơn </h1>
                <hr>
                <div>
                    <h3> Danh sách hóa đơn</h3>
                    <div class="row">
                        <table class="table table-bordered" id="table-user">
                          <thead>
                            <tr>
                              <th>Mã hóa đơn</th>
                              <th>User ID</th>
                              <th>Tổng tiền (đ)</th>
                              <th>Người nhận</th>
                              <th>Địa chỉ nhận</th>
                              <th>Hình thức</th>
                              <th>Ngày đặt hàng</th>
                              <th>Hành động</th>
                            </tr>
                          </thead>
                            <tbody>
                            <%
                               for(Bill bill: BillData.getBillList()) {  
                            %>
                            <tr>
                                <td> <%= bill.getBillId()%> </td>
                                <td> <%= bill.getUserId()%> </td>
                                <td align="right"> <%= bill.getTotalMoney()%> </td>
                                <td> <%= bill.getReceiverName() %> </td>
                                <td> <%= bill.getAddress() %> </td>
                                <td> <%= bill.getPayOption() %> </td>
                                <td> <%= bill.getTime() %> </td>
                                <td><a href="#cancel-<%=bill.getBillId()%>" data-toggle="modal" class="btn btn-danger">Hủy</a> </td>
                            </tr>
                            
                            <% } %>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div> <!-- End Prd review -->

              </div> <!-- End row -->
              
            </div>  <!-- End class content -->
            

        </div> <!-- End Container -->
        

      <div class = "footer"> 
        <p> Code by<a href="https://fb.com/deluxe.psk" target="_blank"> Linh Phan </a> </p>
      </div> <!-- End footer -->
      
      <%
        for(Bill bill: BillData.getBillList()) {  
       %>
       <!-- modal-cancel-->
        <div class="modal fade" id="cancel-<%=bill.getBillId()%>">
            <form action="../BillServlet" method="POST" role="form">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">Bạn chắc chắn muốn hủy đơn hàng có mã "<%=bill.getBillId() %>" chứ?</h4>
                   
                  </div>
                  <div class="modal-footer">
                   
                    <button type="button" class="btn btn-default" data-dismiss="modal">Không chắc lắm</button>
                    <input type="hidden" name="command" value="cancel">
                    <input type="hidden" name="billId" value="<%=bill.getBillId()%>" >
                    <input type="submit" class="btn btn-primary" value="Ừ. Tao chắc" name="cancelBtn">
                  </div>
                </div>
              </div>
            </form>
        </div> <!-- End modal -->
       <% } %>
    </body>
</html>
