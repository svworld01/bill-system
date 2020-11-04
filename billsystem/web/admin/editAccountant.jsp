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
   String id=request.getParameter("id");
   String name="",dob="",gender="",email="",branch="",phone="",doj="",qualification="",salery="",city="",state="",password="";
   String ida=request.getParameter("id");
   try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
                String sql="select * from accontants where id=?";
                
                PreparedStatement st=con.prepareStatement(sql);
                st.setString(1, ida);
                ResultSet rst=st.executeQuery();
                if (rst.next()){
                name=rst.getString(2);
                dob=rst.getString(3);
                gender=rst.getString(4);
                email=rst.getString(5);
                phone=rst.getString(6);
                qualification=rst.getString(7);
                state=rst.getString(8);
                city=rst.getString(9);
                branch=rst.getString(10);
                doj=rst.getString(11);
                password=rst.getString(12);
                salery=rst.getString(13);
                }
                
            }catch(SQLException e){out.print(e);}
         catch(ClassNotFoundException e){out.print(e);} 
%>
<div class="container">
    <h1>Edit Profile of an Accountant</h1>
    <p>you can a new branch in  your branch institute. By filling this <br/>form easily</p>
    <h3>Accountant ID : <%=id%></h3>
    <form method="post" action="updateAcc.jsp">
        <div class="row">
            <div class="col-lg-6">
                <Strong>General Details</strong>
                <hr/>
                <table>
                    <tr>
                        <td style="width: 40%;">Name</td>
                        <td style="width:60%;"><input type="text" name="name" value="<%=name%>" class="form-control" placeholder="accountant name..."></td>
                    </tr>
                    <tr>
                        <td>Date of birth</td>
                        <td><input type="text" name="dob" value="<%= dob %>" class="form-control"></td>
                    </tr>
                    <tr><td>Gender</td><td><input type="text" name="gender" value="<%=gender%>" class="form-control" required="required"></td></tr>
                    <tr><td>Edu. Qualification</td><td><input type="text" name="qualification" value="<%=qualification%>" class="form-control" placeholder="accountant qualification..."></td></tr>
                </table>
            </div>
            <div class="col-lg-6">
                <strong>Contact Information</strong>
                <hr/>
                <table>
                    <tr>
                        <td style="width: 40%;">State</td>
                        <td style="width: 60%;">
                            <input type="text" name="state" value="<%=state%>" class="form-control" required="required">
                        </td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city" value="<%=city%>" placeholder="accountant city..." class="form-control"></td>
                    </tr>
                     <tr>
                        <td>E-mail</td>
                        <td><input type="email" name="email" value="<%=email%>" placeholder="accountant email..." class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Mob. Number</td>
                        <td><input type="number" name="mob_no" value="<%=phone%>" placeholder="mobile number..." class="form-control"></td>
                    </tr>
                </table>
            </div>
        </div> 
        <div class="row" style="margin-top: 20px;">
            <div class="col-lg-6">
                <strong>Professional Details</strong>
                <hr/>
                <table>
                    <tr>
                        <td style="width: 40%;">Date of Joining</td>
                        <td style="width: 60%;"><input type="text" name="doj" class="form-control" value="<%=doj%>"></td>
                    </tr>
                    <tr>
                        <td>Branch</td>
                        <td><input type="text" name="branch" class="form-control" placeholder="branch name" value="<%=branch%>"></td>
                    </tr>
                    <tr>
                        <td>Salary</td>
                        <td><input type="text" name="salery" class="form-control" placeholder="salary..." value="<%=salery%>"></td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-6">
                <strong>For Security </strong>
                <hr/>
                <table>
                    <tr>
                        
                        <td><input type="hidden" value="<%=id%>" name="id"></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">Password</td>
                        <td style="width: 60%;"><input type="text" name="password" class="form-control" placeholder="make a password..." value="<%=password%>"></td>
                    </tr>
                    
                    <tr>
                        
                        <td colspan="2" style="text-align: right;"> <input type="submit" value="Confirm" class="btn btn-primary"></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body> 
</html>
