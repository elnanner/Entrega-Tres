package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import clases.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession(true);
		//si no tiene sesion iniciada como usuario te mando al login, si no te mando al home
		if(sesion.getAttribute("user")==null){
			response.sendRedirect("./jsps/Login.jsp");
		}else{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Home");
			dispatcher.forward(request, response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ahora solo va a controlar el nombre de usuario a lo croto...
		HttpSession sesion = request.getSession(true);
		String userName=request.getParameter("user");
		if(userName.equals("adm")||userName.equals("doc")||userName.equals("alu")||userName.equals("pub")){
			sesion.setAttribute("user", new User(userName,userName));
			sesion.setAttribute("error", null);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Home");
			dispatcher.forward(request, response);
		}else{
			sesion.setAttribute("error", "error");
			response.sendRedirect("./jsps/Login.jsp");
		}
	}

}
