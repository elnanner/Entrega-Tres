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
    
    <title>Modificar cartelera</title>
</head>

<body>

<%@ include file="Header.jsp" %>
<h1 style="text-align:center"> formualrio modificar cartelera</h1>

<div class="container">
<form action="#" method="post">

<div class="input-group">
<label for="name">Name:
<input class="form-control" placeholder="Recipient's username" type="text" id="name" name="name" required> </label>
<label for="descrip">Descripci�n:
<input type="text"  class="form-control" id="descrip" placeholder="Recipient's username"  name="descripcion" required>
 </label><div>
La cartelera "padre" la tiene del listado anterior (al cual le diste agregar cartelera)
</div>
</div>

</form>
</div>


</body>

</html>