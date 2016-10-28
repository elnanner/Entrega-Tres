<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="clases.Nota"%> 
<%@ page import="clases.Comentario"%>
<%@ page import="clases.Nota"%>
<%@ page import="java.util.ArrayList"%>
 <%@ page import="clases.User"%>
 
	<%Nota nota= (Nota)session.getAttribute("elementoActual"); %>    
	

  <!--    <a href="#" data-toggle="modal" data-target="#myModal"> -->
  		<%--  <a href="#" data-toggle="modal" data-target="<%="#"+nota.getAutor() %>">--%>
  		
		 <a href="#" data-toggle="modal" data-target=<%= "#"+nota.getId() %> >
		
		<img class="img-responsive" src=<%=nota.getPathImage()%> width="700" height="400" alt="">
	</a>   
	<h3>
		<input type="button" class="btn-link" data-toggle="modal" data-target="<%= "#"+nota.getId() %>" value="Oferta de la empresa: <%= nota.getAutor()%>" > 
	</h3>
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
       		    
       		                    <%User user=(User) session.getAttribute("user"); %>
       		                    <% if(user!=null && user.getType().equals("alu")){ %>  
                                	<input placeholder="Comment" type="text" style="height:100px" class="form-control" />
                                	<span class="text-mute">Please wrtie your openion.</span>
                              	  <button class="btn btn-sm btn-primary pull-right">Save</button>
                              	 <%} %>
       		    
       		</div>
      
      <%} %>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


