<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form"  %>
 

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>AdminLTE 3 | Starter</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/plugins/jquery-ui/jquery-ui.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/plugins/jquery-ui/jquery-ui.theme.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    
    <!-- Right navbar links -->
     <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
    <li class="nav-item dropdown">
      <a class="nav-link" href="contact-list" aria-expanded="true">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">${kontaktCount}</span>
        </a>
        </li >
        
      <!-- Messages Dropdown Menu -->
       <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-user"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media align-items-center">
              <img src="${pageContext.request.contextPath}/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                 <sec:authentication property="principal.username"/>
                </h3>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-user"></i> Your Profile
          </a>
          <div class="dropdown-divider"></div>
         <a href="login.html" class="dropdown-item">
             <form:form action="${pageContext.request.contextPath}/logout">
              <input type="submit" value="Sign out">
             </form:form>
          </a>
        </div>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="${pageContext.request.contextPath}/dist/img/AdminLTELogo.png" alt="Cubes School Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">City Climber</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
             
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-plus-square"></i>
              <p>
               Usluge
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="usluge-list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Lista Usluga</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="usluge-form" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dodaj novu uslugu</p>
                </a>
              </li>
            </ul>
          </li>
    
           <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-plus-square"></i>
              <p>
                Items
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="item-list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Lista Itema</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="item-form" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dodaj Item</p>
                </a>
              </li>
            </ul>
          </li>
      
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-plus-square"></i>
              <p>
              Visinski radovi
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="vr-list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Visinski radovi lista</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="item-form" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dodaj Visinske radove</p>
                </a>
              </li>
            </ul>
          </li>
         <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-plus-square"></i>
              <p>
              Kontakti
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="kontakt-list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Kontatk lista</p>
                </a>
              </li>
          </ul>
          </li>
         
              
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Visinski radovi</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Visinski radovi</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Visinski radovi</h3>
                <div class="card-tools">
                  
                  <a href="vr-form" class="btn btn-success">
                    <i class="fas fa-plus-square"></i>
                    Dodaj 
                  </a>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>                  
                    <tr>
                      <th style="width: 10%">#</th>
                      <th style="width: 30%;">Slika</th>
                      <th style="width: 30%;">Text1</th>
                      <th style="width: 30%;">Text2</th>
                      <th style="width: 30%;">Text3</th>
                       <th class="text-center">Actions</th>
                    </tr>
                  </thead>
                  <tbody id="sort-list">
                  <c:forEach var="visinskiradoviList" items="${visinskiradoviList}">
                    <tr>
                      <td>
                       
                        ${visinskiradovi.id}
                      </td>
                      <td>
                        <strong>${visinskiradovi.slika}</strong>
                      </td>
                      <td>
                        <strong>${visinskiradovi.text1}</strong>
                      </td>
                      <td>
                        <strong>${visinskiradovi.text2}</strong>
                      </td>
                      <td>
                        <strong>${visinskiradovi.text3}</strong>
                      </td>
                       
                     
                      
                      <td class="text-center">
                        <div class="btn-group">
                          <a href="vr-update-form?id=${visinskiradovi.id}" class="btn btn-info">
                            <i class="fas fa-edit"></i>
                          </a>
                          <button type="button" class="btn btn-info" data-toggle="modal" data-target="#delete-modal-${visinskiradovi.id}">
                            <i class="fas fa-trash"></i>
                          </button>
                        </div>
                      </td>
                    </tr>
                   <div class="modal fade" id="delete-modal-${visinskiradovi.id}">
                    <div class="modal-dialog">
                     <div class="modal-content">
                       <div class="modal-header">
                       <h4 class="modal-title">Obrisi </h4>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                         <span aria-hidden="true">&times;</span>
                        </button>
                       </div>
                     <div class="modal-body">
                         <p>Da li ste sigurni da zelite da obrisete visinske radove?</p>
                         <strong></strong>
                        </div>
                        <div class="modal-footer justify-content-between">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                           <a href="vr-delete?id=${visinskiradovi.id}" class="btn btn-danger" >Delete</a>
                         
                             </div>
                              </div>
                           <!-- /.modal-content -->
                            </div>
                           <!-- /.modal-dialog -->
                   </div>
               </c:forEach>
                   
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

  
    <!-- /.modal -->
  </div>
  <!-- /.content-wrapper -->

  

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      PHP Laravel
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2023 <a href="">City Climber</a>.</strong> All rights reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/dist/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/dist/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
<script src="${pageContext.request.contextPath}/dist/plugins/jquery-ui/jquery-ui.min.js"></script>
</body>
</html>

