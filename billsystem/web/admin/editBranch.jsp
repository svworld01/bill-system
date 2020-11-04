<%-- 
    Document   : branch
    Created on : Nov 22, 2015, 2:01:40 AM
    Author     : Saurabh Kr. Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%
    String b_name="";
    String b_acc="";
    String b_trainer="";
    String b_fees="";
    String b_id=request.getParameter("id");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
        String sql="select * from branch where id=?";
        PreparedStatement st=con.prepareStatement(sql);
        st.setString(1, b_id);
        ResultSet rs=st.executeQuery();
        if(rs.next()){
            
            b_name=rs.getString(2);
            b_acc=rs.getString(3);
            b_trainer=rs.getString(4);
            b_fees=rs.getString(5);
        }
    }
    catch(SQLException e){out.println(e);}
%>
<div class="container">
    <h1>Update Branch</h1>
    <p>you can update your branch information.</p>
    <div class="row">
        <div class="col-lg-2">
            
        </div>
        <div class="col-lg-8">
        <form method="post" action="updateBranch.jsp">
            <table width="100%" class="table table-hover">
            <thead>
                <tr>
                    <th colspan="2">you are going to edit branch where branch ID= <%=b_id%><th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 30%"><label for="b_name">Branch Name:</label></td>
                    <td style="width: 70%"><input type="text" name="b_name" id="b_name" value="<%=b_name%>" class="form-control" required="required"/></td>
                </tr>
                <tr>
                    <td style="width: 30%"><label for="b_acc">Branch Accountant: </label></td>
                    <td style="width: 70%"><input type="text" class="form-control" id="b_acc" value="<%=b_acc%>" required="required" name="b_acc"></td>
                </tr>
                <tr>
                    <td style="width: 30%"><label for="b_trainer">Branch Trainer: </label></td>
                    <td style="width: 70%"><input type="text" class="form-control" id="b_trainer" value="<%=b_trainer%>" required="required" name="b_trainer"></td>
                </tr>
                <tr>
                    <td style="width: 30%"><label for="b_fees">Branch Fees: </label></td>
                    <td style="width: 70%"><input type="text" class="form-control" id="b_fees" value="<%=b_fees%>" required="required" name="b_fees"></td>
                </tr>
                <tr>
                    
                    <td colspan="2" style="text-align: right;">
                        <input type="hidden" name="id" value="<%=b_id%>" />
                        <input type="submit" value="Update" class="btn btn-primary">
                        <a href="listBranch.jsp" class="btn btn-link">back</a></td>
                </tr>
            </tbody>
        </table>
        </form>
        </div>
        <div class="col-lg-2"></div>
    
    </div>
    </body> 
</html>