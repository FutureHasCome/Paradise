package lib;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.CachedRowSet;

/**
 * Servlet implementation class Bookservlet
 */
@WebServlet("/Bookservlet")
public class Bookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Bookservlet() {
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
		PrintWriter out = response.getWriter();
		String sql;
		String book = request.getParameter("book");
		String account = request.getParameter("account");
		String rebook = request.getParameter("rebook");
		String reaccount = request.getParameter("reaccount");
		String book2 = request.getParameter("book2");
		String account1 = request.getParameter("account1");
		if (book2 != null) {
			sql = "delete from regist where book='" + book2 + "'and account='" + account1 + "'";
			lib.DBtools.dochange(sql);
			response.sendRedirect("reader/rg.jsp");
		} else {
			if (rebook != null) {
				sql = "delete from regist where book='" + rebook + "'and account='" + reaccount + "'";
				lib.DBtools.dochange(sql);
				response.setCharacterEncoding("utf-8");
				request.setCharacterEncoding("utf-8");
				response.sendRedirect("reader/bs.jsp");

			} else {
				String sql1 = "select * from regist where book='" + book + "'and account='" + account + "'";
				CachedRowSet crs = lib.DBtools.doChange(sql1);
				try {
					if (crs.next()) {
						response.sendRedirect("reader/bs.jsp?pf=no");

					} else {

						sql = " insert into regist(account,book) values('" + account + "','" + book + "')";
						lib.DBtools.dochange(sql);
						response.sendRedirect("reader/bs.jsp?m=000&book="+book+"");

					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}
	}

}
