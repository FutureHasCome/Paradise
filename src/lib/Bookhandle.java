package lib;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.CachedRowSet;

/**
 * Servlet implementation class Bookhandle
 */
@WebServlet("/Bookhandle")
public class Bookhandle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Bookhandle() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String bookname, information, regist,add ,sql="1";
		bookname = request.getParameter("bookname");
		information = request.getParameter("information");
		regist = request.getParameter("regist");
        add=request.getParameter("add");
    
		bookname= (bookname== null ? "" :bookname);
		information = (information== null ? "" :information);
		regist= (regist == null ? "" : regist);
		if(add.equals("hah")){
		 sql = "update bookstore set information='" + information + "',regist='" + regist
					+ "'where book='" + bookname + "'";
		}
		else if(add.equals("nop")){
		sql=" insert into bookstore(book,information,regist) values('" + bookname + "','" + information + "' ,'" + regist + "')";
		}
		lib.DBtools.dochange(sql);
		response.sendRedirect("gover/bs.jsp");
	}

}
