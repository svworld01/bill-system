<!DOCTYPE html> 
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Payment Billing System</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
	<link href="../css/responsive.css" rel="stylesheet" type="text/css" />
	<script src="../js/jquery.js"></script>
  <script src="../js/bootstrap.min.js"></script>
        <style type="text/css">
		body{margin-top:100px;}
        </style>
</head>
<body>
    
<header id="header">

<!----------- header navbar--------->
<nav class="navbar navbar-inverse navbar-fixed-top" role="banner">
            <div class="container">
                 <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <a class="navbar-brand" href="#"><img src="../images/logo.png" alt="logo"></a>
                </div>
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="listBranch.jsp">Branches</a></li> 
                        <li><a href="listAccountants.jsp">Accountants</a></li>
                        <li><a href="listStudents.jsp">Students</a></li>
                        
                        <li><a href="help.html">Logout</a></li>                    </ul>
                </div>
              </div>
        </nav>
</header>
<!------------/nav-------------->
<div class="container">
    <%
        String name=(String)session.getAttribute("admin_name");
    %>
    <h2>Welcome | Mr. <%= name %></h2>
    <p><strong>Admin Dashboard</strong><br/>
        Here is the work or features that is perform by admin.
    <table class="table table-hover">
    <tbody>
      <tr class="success">
          <td><a href="listBranch.jsp">Branches</a></td>
      </tr>
      <tr class="danger">
          <td><a href="listAccountants.jsp">Accountants</a></td>
      </tr>
      
      <tr class="success">
          <td><a href="listStudents.jsp">Students</a></td>
      </tr>
      <tr class="danger">
        <td><a href="">Account Setting</a></td>
      </tr>
    </tbody>
  </table>
    
    
</div>
  <div class="row" style="background: #151515; height: 80px; margin-top: 20px;">
          <div class="col-sm-4">
              Saurabh Kumar Verma
          </div>
          <div class="col-lg-4">
              
          </div>
          <div class="col-lg-4">
              
          </div>
      </div>
</div>
</body>
</html>
