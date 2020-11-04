<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%
   
   String name="",dob="",gender="",email="",branch="",phone="",doj="",qualification="",salery="",city="",state="";
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
                
                salery=rst.getString(13);
                }
                
            }catch(SQLException e){out.print(e);}
         catch(ClassNotFoundException e){out.print(e);} 
%>
<div class="container">
    <h1>Accountant Profile</h1>
    <p>All details of accountant</p>
    
    
        <div class="row">
            <div class="col-lg-6">
               <h3>General Details</h3>
                <hr/>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 40%;"><b>Name</b></td>
                        <td style="width:60%;">: <%=name%></td>
                    </tr>
                    <tr>
                        <td>Date of birth</td>
                        <td>: <%=dob%></td>
                    </tr>
                    <tr><td><b>Gender</b></td><td>: <%=gender%></td></tr>
                    <tr><td><b>Edu. Qualification</b></td><td>: <%=qualification%></td></tr>
                </table>
            </div>
            <div class="col-lg-6">
                <h3>Contact Information</h3>
                <hr/>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 40%;"><b>State</b></td>
                        <td style="width: 60%;">: <%=state%></td>
                    </tr>
                    <tr>
                        <td><b>City</b></td>
                        <td>: <%=city%></td>
                    </tr>
                     <tr>
                         <td><b>E-mail</b></td>
                        <td>: <%=email%></td>
                    </tr>
                    <tr>
                        <td><b>Mob. Number</b></td>
                        <td>: <%=phone%></td>
                    </tr>
                </table>
            </div>
        </div> 
        <div class="row" style="margin-top: 20px;">
            <div class="col-lg-6">
                <h3>Professional Details</h3>
                <hr/>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 40%;"><b>Date of Joining</b></td>
                        <td style="width: 60%;">: <%=doj%></td>
                    </tr>
                    <tr>
                        <td><b>Branch</b></td>
                        <td>: <%=branch%></td>
                    </tr>
                    <tr>
                        <td><b>Salary</b></td>
                        <td>: <%=salery%></td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-6">
                <form action="editAccountant.jsp" method="post">
                    <input type="hidden" name="id" value="<%=ida%>">
                    <input type="submit" value="Edit Accountant Profile" class="btn btn-info">
                </form>
            </div>
        </div>
    
</body> 
</html>

</div>