package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class redirectFormAltaPublicacion
 */
@WebServlet("/redirectFormAltaPublicacion")
public class redirectFormAltaPublicacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public redirectFormAltaPublicacion() {
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
		HttpSession sesion = request.getSession(true);
		sesion.setAttribute("idPizarra",idPizarra);
		//response.sendRedirect("./jsps/FormularioAgregarPublicacion.jsp");
		response.sendRedirect("./jsps/AltaPublicacion.jsp");
	}

}
