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
    
    <title>Crear Template</title>
    
</head>

<body>
<script>

    	function modo(){
    		if($("#toggle").text()=="Finalizar Configuraci�n"){
    			$("#default").remove();
    			$("#template-div").remove();
    			$("#toggle").text("Editar P�gina");
    		}else
    			if($("#toggle").text()=="Editar P�gina"){
    				
		    		$("#btn-toggle").append('<div id="default"></div)');
		    		$("#toggle").text("Finalizar Configuraci�n");
		    		$("#default").append('<button id="" class="" onclick="toggleDefault()">Configuraci�n por defecto</button>');
		    		
		    		
    		}
    	};
    	function toggleDefault(){
    		midiv = '<div class="col-md-4 portfolio-item"></div>';
    		for (var i = 0; i < 3; i++) {
    			
				$(".template-div").append('<div id=class="col-md-4 portfolio-item">div</div>');
			}
    		$("#default").remove();
    		$("#toggle").text("Editar P�gina"); 
    	};
    
    </script>
<%@ include file="Header.jsp" %>
<h1 style="text-align:center"> Alta Cartelera</h1>

<div class="container">
	<div id="btn-toggle"><button id="toggle" class="" onclick="modo()">Editar P&aacute;gina</button></div>
	<br />
	<div id="default"></div>
	<br />
	<div class="template-div"></div>
</div>


</body>

</html>