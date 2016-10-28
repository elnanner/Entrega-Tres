package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import clases.FuturoFactory;
import clases.Pizarra;

/**
 * Servlet implementation class agregarPublicacion
 */
@WebServlet("/agregarPublicacion")
public class agregarPublicacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public agregarPublicacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idPizarra=request.getParameter("idPizarra");
		String titulo=request.getParameter("titulo");
		String descripcion=request.getParameter("descripcion");
		String texto=request.getParameter("texto");
		String comentarios=request.getParameter("comentarios");
		System.out.println(" quieren dar de alta publicacion en la pizarra con id: "+idPizarra);
		System.out.println(" titulo: "+titulo);
		System.out.println(" des: "+descripcion);
		System.out.println(" text: "+texto);
		System.out.println(" comentarios: "+comentarios); //si es null no se la selecciono, si es 1 se la selecciono :)
		System.out.println(" ");
		
		HttpSession sesion = request.getSession(true);
		Pizarra pizarra=new FuturoFactory().getPizarraId(idPizarra);
		sesion.setAttribute("pathActual",pizarra.getPath());
		sesion.setAttribute("pizarra",pizarra);
		response.sendRedirect("./Home.jsp");
		
	}

}
