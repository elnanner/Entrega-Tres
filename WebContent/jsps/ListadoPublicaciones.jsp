<!DOCTYPE html>
<html lang="es">
<head>
	  <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
      <!-- Custom CSS -->
    <link href="../css/3-col-portfolio.css" rel="stylesheet">

    <!-- Bootstrap Core CSS -->
    <link href="../css/timeLine.css" rel="stylesheet">
    
    
     <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    
    <title>Listado Publicaciones</title>
</head>

<body>

<%@ include file="Header.jsp" %>

<!-- Page Content -->
    <div class="container">
<h1 style="text-align:center"> Listado Publicaciones</h1>

<div> 
  	<a class="btn btn-primary" href="AltaPublicacion.jsp"><span class="glyphicon glyphicon-plus"> </span>Nueva Publicaci&oacute;n</a>
</div>
 
<table class="table table-striped">
  <thead>
    <tr>
      <th>Publicaci&oacute;n</th>
      <th>Descripci&oacute;n</th>
      <th>Operaciones</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Publicacion 1</td>
      <td>Información sobre cursadas...</td>
       <td> 
        <div>  
         </div>
          <a href="#">
          <span class="glyphicon glyphicon-cog"></span>
        </a>
         <div>  
           <a href="#">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
         </div>
      </td>
    </tr>
    <tr>
      <td>Publicacion 2 </td>
      <td>Información sobre finales...</td>
       <td> 
        <div>  
         </div>
          <a href="#">
          <span class="glyphicon glyphicon-cog"></span>
        </a>
         <div>  
           <a href="#">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
         </div>
      </td>
    </tr>
    <tr>
      <td>Publicacion 3</td>
      <td>Información sobre eventos...</td>
       <td> 
        <div>  
         </div>
          <a href="#">
          <span class="glyphicon glyphicon-cog"></span>
        </a>
         <div>  
           <a href="#">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
         </div>
      </td>
    </tr>
  </tbody>
</table>
</div>

</body>

</html>