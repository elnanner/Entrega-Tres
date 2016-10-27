<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="clases.Pizarra"%> 
 <%@ page import="clases.User"%>
    
<%Pizarra cartelera= (Pizarra)session.getAttribute("elementoActual"); %>    


<a href=<%=cartelera.getNombre()%>> 
	<img class="img-responsive" src=<%=cartelera.getPathImage() %> width="700" height="400\" alt="">
</a>   
<h3>
	<a href=<%=cartelera.getNombre()%>> <%=cartelera.getNombre()%> </a> 
	
</h3>
<p><%=cartelera.getDescripcion() %></p>    
 
 <%User user=(User) session.getAttribute("user"); %>
	<% if(user!=null && user.getType().equals("alu")){ %>   <!--  agregar que no este interesado al if -->
		<br>
		<a href="Interes.jsp"> me interesa, quiero recibir notificaciones </a>
     <%} %>