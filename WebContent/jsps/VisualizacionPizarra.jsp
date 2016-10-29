<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="clases.Pizarra"%> 
 <%@ page import="clases.User"%>
    
<%Pizarra cartelera= (Pizarra)session.getAttribute("elementoActual"); %>    


<a href=<%=cartelera.getNombre()%>> 
	<img class="img-responsive" src=<%=cartelera.getPathImage() %> width="700" height="400\" alt="">
</a>   
<h3>
	<a href=<%=cartelera.getNombre()%>> <%=cartelera.getNombre()%></a> 
	
</h3>
<p><%=cartelera.getDescripcion() %></p>    
 
 <%User user=(User) session.getAttribute("user"); %>
	<% if(user!=null && user.getType().equals("alu")){ %>   <!--  agregar que no este interesado al if -->
		<br>
		<!-- <a href="Interes.jsp"> me interesa, quiero recibir notificaciones </a> -->
		
		<form method="post" action="#"> <!--  notificar interes .jsp o algo asi -->
			<input type="hidden" value=<%=cartelera.getId() %> required readonly> 
			<input type="submit" class="btn-link" value="me interesa, quiero recibir notificaciones"> 
		</form>
     <%} %>
     
     <% if(user!=null &&  user.getType().equals("pub")){ %>  
		<br>
		<form method="post" action="redirectFormAltaPublicacion">  <!--  supongo que este servlet (AgregarPublicacion) y vistas usa admin, publicador y profesor, el filtro controla esos permisos y deja pasar :) -->
			<input type="hidden" name="idPizarra" id="idPizarra" value=<%=cartelera.getId() %> required readonly>
			<input type="submit" class="btn-link" value="deseo agregar una publicacion a la pizarra"> 
		</form>
		
     <%} %>
