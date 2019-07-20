package lib;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.CachedRowSet;

import lib.DBtools;


/**
 * Servlet implementation class Loghandle
 */
@WebServlet("/Loghandle")
public class Loghandle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loghandle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		String sql="",account,password,select,m;
		select=request.getParameter("select");	
		account=request.getParameter("account");
		password=request.getParameter("password");
	
		if(select.equals("管理员")){
			sql="select * from gover where account='"+account+"'";
		}
		else{
			sql="select * from reader where account='"+account+"'";
		}	
	
		try {
			if(sql!=null){
				CachedRowSet rs=DBtools.doChange(sql);
			
			boolean jud=false;
				jud=rs.next();
				String pword=rs.getString(2);
			if(jud==true&&pword.equals(password)){				
				if(select.equals("管理员")){
					response.sendRedirect("frame/frame.jsp?account="+account+"&m=123");
				}
				else {
					response.sendRedirect("frame/frame.jsp?account="+account+"&m=124");
				}
			}
			else{
				response.sendRedirect("frame/Login.jsp?ps=no");
			}
				
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}

}
