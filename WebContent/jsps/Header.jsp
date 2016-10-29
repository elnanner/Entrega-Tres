     <%@ page import="clases.User"%>
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