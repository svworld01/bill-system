<%-- 
    Document   : branch
    Created on : Nov 22, 2015, 2:01:40 AM
    Author     : Saurabh Kr. Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<div class="container">
    <h1>Students</h1>
    <p>Here is the list of all branches</p>
    <%
        String name=(String)session.getAttribute("admin_name");
        String branch=(String)session.getAttribute("branch");
    %>
    <p  style="text-align: right;"><a href="addStudent.jsp" class="btn btn-primary">+Add</a></p>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bill_system" user="root" password=""/> 
<sql:query dataSource="${snapshot}" var="result"> SELECT * from students where branch='<%=branch%>'; </sql:query> 
<table border="1" width="50%" style="margin: 0px auto 0px auto;" class="table table-hover">
            <thead>
            <tr> 
                <th>ID</th> 
                <th>Name</th> 
                <th>Father's Name</th>
                <th>Email </th>
                <th>Date of Joining</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
        <c:forEach var="row" items="${result.rows}"> 
                <tr> 
                    <td><c:out value="${row.id}"/></td> 
                    <td><c:out value="${row.name}"/></td> 
                    <td><c:out value="${row.f_name}"/></td> 
                    <td><c:out value="${row.email}"/></td>
                    <td><c:out value="${row.doj}"/></td>
                    <td>
                        <form action="EditStudent.jsp" method="post">
                        <input type="hidden" name="id" value="${row.id}" />
                        <input type="submit" value="Edit" name="view" class="btn btn-link">
                        </form>
                    </td>
                </tr>
        </c:forEach> 
            </tbody>
        </table> 

    </body> 
</html>