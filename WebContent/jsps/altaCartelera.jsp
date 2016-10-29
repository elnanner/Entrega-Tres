<!DOCTYPE html>
<html lang="es">
<head>
	  <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
      <!-- Custom CSS -->
    <link href="../css/3-col-portfolio.css" rel="stylesheet">

    <!-- Bootstrap Core CSS -->
    <link href="../css/timeLine.css" rel="stylesheet">
    
    <title>Alta cartelera</title>
</head>

<body>

<%@ include file="Header.jsp" %>
<form action="#" method="post">

<div class="input-group">
<label for="name">Name:
<input class="form-control" placeholder="Recipient's username" type="text" id="name" name="name" required> </label>
<label for="descrip">Descripción:
<input type="text"  class="form-control" id="descrip" placeholder="Recipient's username"  name="descripcion" required>
 </label><div>
La cartelera "padre" la tiene del listado anterior (al cual le diste agregar cartelera)
</div>
</div>

</form>



</body>

</html>