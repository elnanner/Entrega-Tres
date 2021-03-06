<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="clases.Nota"%> 
<%@ page import="clases.Comentario"%>
<%@ page import="clases.Nota"%>
<%@ page import="java.util.ArrayList"%>
 <%@ page import="clases.User"%>
 
 <script>
 function enviarFormulario(){
	 if(document.getElementById("comentario").value!=""){
		 alert("comentario "+document.getElementById("comentario").value+" del user "+document.getElementById("user").value);
	 }//alert("comentario: ".concat(Document.getElementById("comentario").value));
	 else{
		 alert("el comentario no puede ser vacio!");
	 }
 }
 </script>
 
	<%Nota nota= (Nota)session.getAttribute("elementoActual"); %>    
	   <%User user=(User) session.getAttribute("user"); %>

  <!--    <a href="#" data-toggle="modal" data-target="#myModal"> -->
  		<%--  <a href="#" data-toggle="modal" data-target="<%="#"+nota.getAutor() %>">--%>
  		
		 <a href="#" data-toggle="modal" data-target=<%= "#"+nota.getId() %> >
		
		<img class="img-responsive" src=<%=nota.getPathImage()%> width="700" height="400" alt="" title="<%=nota.getTexto() %>">
	</a>   
	<h4>
		<input type="button" class="btn-link" data-toggle="modal" data-target="<%= "#"+nota.getId() %>" value="Oferta de la empresa: <%= nota.getAutor()%>" > 
	</h4>
	<p><%= nota.getDescripcion()%></p>
    
    
    
    <!--  modal -->
  <div class="modal fade" id="<%= nota.getId() %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><%= nota.getAutor() %></h4>
      </div>
      <div class="modal-body">
        <%= "Fecha: " +nota.getFecha()%>
        <br>
        <%="&emsp;"+nota.getTexto() %>
      </div>
      
      <%if((Boolean)session.getAttribute("permiteComentar")){ %>
      		<div class="modal-body">
      			<hr/>
       			<% ArrayList<Comentario> comments=nota.getComments() ; %>
       			<% if(comments.size()==0){%>
       		          No hay comentarios
       			<% }else{ %>
       			       <ul class="timeline">
       		            <% for(int indice=0;indice<comments.size();indice++){ %>
       		              
      						
       						
       		               <%if (indice%2==0){ %>
       		                           <li> 
       		                       		
       		                       		  <div class="timeline-panel">
       		                       			<%= comments.get(indice).getAutor()+" dijo:"+comments.get(indice).getTexto() %>
       		                       			   </div>
       		                       			</li>
       		                          
       		                 <%}else{ %>
       		                          <li class="timeline-inverted"> 
       		                          		<div class="timeline-panel">
       		                          		
       		                          				<%= comments.get(indice).getAutor()+" dijo:"+comments.get(indice).getTexto() %>
       		                          	 </div>			
       		                          	</li>
       		                              
       		                 <%} %>
       		               
       		                 
       		             
       		             <%} %>
       		            </ul>
       		    <% } %>
       		    
       		                 
       		                    <% if(user!=null && user.getType().equals("alu")){ %>  		                        
                                	<input placeholder="Escribe un comentario..." id="comentario" type="text" style="height:100px" class="form-control" required/>
                                	<input id="user" type="hidden" value="<%=user.getName() %>" />
                                	<span class="text-mute">Queremos saber tu opini&oacute;n</span>
                              	 <!--  <button class="btn btn-sm btn-primary pull-right">Save</button> -->
                              	 <%} %>
       		    
       		</div>
      
      <%} %>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>  
          <% if(user!=null && user.getType().equals("alu")){ %>      
       			 <button type="button" class="btn btn-primary" onClick="enviarFormulario()">Comentar</button>
        <%} %>
      </div>
    </div>
  </div>
</div>


