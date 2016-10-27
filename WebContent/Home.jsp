<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="clases.Pizarra"%>
       <%@ page import="clases.FuturoFactory"%>
       <%@ page import="clases.Nota"%>
        <%@ page import="clases.User"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>cartelera virtual informática unlp</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/3-col-portfolio.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<% Pizarra pizarraContenedora=(Pizarra)session.getAttribute("pizarra"); %>
<%if (session.getAttribute("pathActual")==null || pizarraContenedora==null){ %>
    <%response.sendRedirect("Home"); %>
<%}%>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Start Bootstrap</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <!-- <li>
                        <a href="Home">Home</a>
                    </li> -->
                    
                    <!-- <li>
                        <a href="Login">Login</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>   -->  
                     <%User usuario=(User) session.getAttribute("user"); %>              
                    <%if(usuario!=null){ %>
                    <li>
                        <a href="Home">Home</a>
                    </li>
                    	<li><a href="#"><%=  usuario.getName() %></a></li>
                    	<li><a href="Logout">Logout</a></li>
                    	<% String typePaIfParche= usuario.getType();%>
                    	<% String typeUser= "../jspsMenuUsers/"+usuario.getType()+".jsp";%>
                         <%--<%System.out.println(" link: "+typeUser); --%>
                        
                          <% if(typePaIfParche.equals("adm")){ %> <!-- eso deberia ser con el jsp include de abajo "automatico" con el type user de arriba -->
                         	 <%@ include file="../jspsMenuUsers/adm.jsp" %>                          
                           <% } %>
                           <% if(typePaIfParche.equals("alu")){ %> <!-- eso deberia ser con el jsp include de abajo "automatico" con el type user de arriba -->
                         	 <%@ include file="../jspsMenuUsers/alu.jsp" %>                          
                           <% } %>
                           <% if(typePaIfParche.equals("doc")){ %> <!-- eso deberia ser con el jsp include de abajo "automatico" con el type user de arriba -->
                         	 <%@ include file="../jspsMenuUsers/doc.jsp" %>                          
                           <% } %>
                           <% if(typePaIfParche.equals("pub")){ %> <!-- eso deberia ser con el jsp include de abajo "automatico" con el type user de arriba -->
                         	 <%@ include file="../jspsMenuUsers/pub.jsp" %>                          
                           <% } %>
                         
                          
                           
                    	 <%-- <jsp:include page="<%=typeUser%>" />--%> <!--  asi deberia ser... pero no me funca el le -->
                    <% }                  
                    	else{%>
							<li><a href="Login">Login</a></li>
							<li><a href="#">Contact</a></li>
						<%} %>
				</ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
    
  
     
        <!-- Page Header -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"> <% out.print(" "+pizarraContenedora.getUbicacionActual()); %>         
                    <small> <% out.print(" "+pizarraContenedora.getPath()); %></small>            
                </h1>
            </div>
        </div>
        <!-- /.row -->
      
        
      <%@ include file="../jsps/contenido.jsp" %>
         <%-- 	 <jsp:include page="../jsps/contenido.jsp" flush="true" />--%>
    
       <!--  <hr> -->
        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
