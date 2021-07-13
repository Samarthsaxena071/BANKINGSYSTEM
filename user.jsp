

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!doctype html>
  <html lang="en">

  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>SF BANK-Making money make sense</title>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="bankcss/bank.css" class="css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">


  </head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="bank.html">SF Bank</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="bank.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="aboutus.html" target="_blank">About us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#service">Services</a>
          </li>

        </ul>
      </div>
    </div>
  </nav>
   <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="pics/user.jpg" class="d-block w-100" alt="can't display img">
      <div class="carousel-caption d-none d-md-block">
        <h3 style='color: white;text-align: initial'>USER DETAILS</h3>
      </div>
  </div>

</div>
<% 
 Connection con=null;
 Statement smt=null;
 ResultSet rs=null;
  Class.forName("com.mysql.jdbc.Driver").newInstance();

        //(2) Establishing connection with database
con=DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/bank","root","Shabdpratap20");

        //(3) Creating statment object 
       smt=con.createStatement();
       rs=smt.executeQuery("select * from ban");
      
       
%>
    <section id="table">
      <div class="user-details">
    <h3>USER INFORMATION</h3>
       <table border="1" style="width:80%" class="center" >
         <thead class="head">
           <tr>
             <th>Customer-ID</th>
             <th>Customer Name</th>
             <th>EMAIL ID</th>
            <th>BALANCE</th>
           </tr>
         </thead>
         <tbody class="body">
             <%
              while(rs.next())
              {
                  String id=rs.getString("cid");
                  String name=rs.getString("cname");
                  String email=rs.getString("emailid");
                  String bal=rs.getString("balance");
             %>
            <tr>
             <td><%=id%></td>
             <td><%=name%></td>
             <td><%=email%></td>
             <td><%=bal%></td>
           </tr>
        <%
              }
        %>
         </tbody>
       </table>

      </div>
    </section>

<!-- Footer -->

<footer class="container">
            <p>© 2021 SF Bank,Inc<a href="#"></a> · <a href="#"></a></p>
</div>
          </footer>   

  </body>
</html>