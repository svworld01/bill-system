<%-- 
    Document   : branch
    Created on : Nov 22, 2015, 2:01:40 AM
    Author     : Saurabh Kr. Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<div class="container">
    <h1>Accountants</h1>
    <p>Here is the list of all Accountants</p>
    <p  style="text-align: right;"><a href="addAccountant.jsp" class="btn btn-primary">+Add</a></p>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bill_system" user="root" password=""/> 
<sql:query dataSource="${snapshot}" var="result"> SELECT * from accountant; </sql:query> 
<table border="1" width="50%" style="margin: 0px auto 0px auto;" class="table table-hover">
            <thead>
            <tr> 
                <th>ID</th> 
                <th>Name</th>
                
                <th>Gender</th>
                <th>Phone</th>
                <th>Branch</th>
                <th>Date of Joining</th>
                <th>Email </th>
                <th>Qualification</th>
                <th>Address</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
        <c:forEach var="row" items="${result.rows}"> 
                <tr> 
                    <td><c:out value="${row.id}"/></td> 
                    <td><c:out value="${row.name}"/></td> 
                    
                    <td><c:out value="${row.gender}"/></td> 
                    <td><c:out value="${row.phone}"/></td> 
                    <td><c:out value="${row.branch}"/></td>
                    <td><c:out value="${row.doj}"/></td> 
                    <td><c:out value="${row.email}"/></td>
                    <td><c:out value="${row.qualification}"/></td>
                    <td><c:out value="${row.city}"/>,<c:out value="${row.state}"/></td>
                    <td>
                        <form action="viewAcc.jsp" method="post">
                        <input type="hidden" name="id" value="${row.id}" />
                        <input type="submit" value="View" name="view" class="btn btn-link">
                        </form>
                    </td>
                </tr>
        </c:forEach> 
            </tbody>
        </table> 

    </body> 
</html>