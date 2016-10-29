<%@ page import="clases.User"%>

 <li><a href="#">Request Context Path: <%= request.getContextPath() %></a></li>
<li><a href="#">Request URI:          <%= request.getRequestURI() %></a></li>
<li><a href="#">Request URL:          <%= request.getRequestURL() %></a></li>
<%String helpPath="/lala"; %>
<% String[] pathSplit=request.getRequestURL().toString().split(request.getRequestURI());%>
<%String pathRootRama=pathSplit[0]+request.getContextPath(); %>							
<li><a href="<%=pathRootRama%>">PathRootMotherFoca!</a></li> <!--  todos tienen pathrootramamotherfoca -->

<%User usuario=(User) session.getAttribute("user"); %>              
                    <%if(usuario!=null){ %>
                    <li>
                        <a href="<%=pathRootRama %>/Home">Home</a>
                    </li>	
                    	<li><a href="#"><%=  usuario.getName() %></a></li>
                    	<li><a href="<%=pathRootRama %>/Logout">Logout</a></li>
                    	<% String typePaIfParche= usuario.getType();%>
                    	<% Integer cantidadNieveles= request.getRequestURI().split("/").length;%> <!--  se que puedo ir "y volver" de mas pero es para asegurarme funcionamiento de manera simple -->
                    	<% System.out.println(" division path "+ request.getRequestURI().split("/").toString()); %>
                    	<% String indirecciones=""; %>
                    	
                    	<% for(Integer ind=1;ind<cantidadNieveles-1;ind++){ %><!--  le saco 1 a cantidad porque el primer / es el del proyecto -->
                    	       <% indirecciones+="../";%> <!--  cada vuelta es un nivel de indireccion para volver a la raiz -->
                    	<%} %>
                    	<%--<% String typeUser= "../jspsMenuUsers/"+usuario.getType()+".jsp";--%>
                         <%--<%System.out.println(" link: "+typeUser); --%>
                        
                       <!--  OJO ACA!!!!! HASTA QUE NO APRENDAR A PASAR PARAMETROS EN LOS INCLUDES ESTOS SI!!!!!! VAN  TENER PROBLEMAS POR EL PATH RELATIVO! ¿otro grado de indireccion de include para solucionarlo? (posible parche) -->
                          <% if(typePaIfParche.equals("adm")){ %> <!-- eso deberia ser con el jsp include de abajo "automatico" con el type user de arriba -->
                         <%-- 	<%@ include file="../jspsMenuUsers/adm.jsp" %>  --%>
                         	<% String myVariable=indirecciones+"jspsMenuUsers/adm.jsp";%> 
                         	<% System.out.println(" path import admjsp "+myVariable); %>
                         	<% if("../jspsMenuUsers/adm.jsp".equals(myVariable)){ %>
                         	    <%System.out.println(" igualeesss ") ;%>
                         	<%}else{ %>
                         		    <%System.out.println(" <> ") ;%>
                         	<%} %>
                         
                         	<jsp:include page="/jspsMenuUsers/adm.jsp" />
                         	  <%-- -<jsp:include page="<%=myVariable %>" flush="true" /> -%>
                         	<%--<% String myVariable=pathRootRama+"/jspsMenuUsers/adm.jsp";%> 
                         	<% System.out.println(" path import admjsp "+myVariable); %>
                         	  <jsp:include page="<%= myVariable %>" flush="true" />    --%>                   
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
                    <% }else{%>
							<li><a href="<%=pathRootRama %>/Login">Login</a></li>
							<li><a href="#">Contact</a></li>
						<%} %>