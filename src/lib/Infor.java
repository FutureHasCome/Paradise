package lib;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Infor
 */
@WebServlet("/Infor")
public class Infor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Infor() {
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
		// TODO Auto-generated method stub
		doGet(request, response);String sql;
		String account=request.getParameter("account");
		String phone=request.getParameter("phone");
		String mail=request.getParameter("mail");
		String word=request.getParameter("word");
		String password=request.getParameter("password");
		if(password!=null){
			sql=" insert into reader(account,password,word,mail,phone) values('" + account + "','" + password + "' ,'" + word + "','" + mail + "','" + phone + "')";
			lib.DBtools.dochange(sql);
			response.sendRedirect("frame/Login.jsp");
		}else{
			 sql = "update reader set word='" + word + "',mail='" + mail
		
					 + "',phone='" + phone + "'where account='" + account + "'";
			 lib.DBtools.dochange(sql);
				response.sendRedirect("reader/inf.jsp?m=154");
		}
		
		
		
	}

}
