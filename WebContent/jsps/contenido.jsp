<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="clases.Pizarra"%>   
<%@ page import="clases.FuturoFactory"%>
    
<% Pizarra pizarra=(Pizarra)session.getAttribute("pizarra"); %>
<% ArrayList<Nota> notas=pizarra.getNotas();%>
<% ArrayList<Pizarra> pizarras=pizarra.getPizarras();%>
<%session.setAttribute("permiteComentar",pizarra.getPermiteComentar()); %>
<div class="row">
<!--  -->

<% Pizarra pizarraActual=null; %>
<%for(int i=0; i<pizarras.size();i++){%>
			<% pizarraActual=pizarras.get(i); %>
			<%session.setAttribute("elementoActual",pizarraActual); %>
			<div class="col-md-4 portfolio-item">
            	<% String vista=pizarraActual.getVista(); %>
            	 <%@ include file="VisualizacionPizarra.jsp" %>
            	 <%-- <jsp:include page="VisualizacionPizarra.jsp" flush="true" />--%>   
  </div>              
<%}%>  

<% Nota notaActual=null; %>
<%for(int i=0; i<notas.size();i++){%>
			<% notaActual=notas.get(i); %>
			<%session.setAttribute("elementoActual",notaActual); %>
			<div class="col-md-4 portfolio-item">
            	<% String vista=notaActual.getVista(); %>
                <%@ include file="VisualizacionNota.jsp" %>
            	<%-- <jsp:include page="./VisualizacionNota.jsp" flush="true" />--%>      
  </div>                 
<%}%>            
           
</div>