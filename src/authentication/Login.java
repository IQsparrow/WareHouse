package authentication;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.DB;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String em = request.getParameter("em");
		String pa = request.getParameter("pw");
		System.out.println(em);
		HttpSession session = request.getSession();

		try {
			
			if (em.equalsIgnoreCase("ADMIN@GMAIL.COM") && pa.equalsIgnoreCase("ADMIN")) {
				session.setAttribute("uid", 1);
				session.setAttribute("Role", 1);
				RequestDispatcher rd = request.getRequestDispatcher("HOME_Admin.jsp");
				rd.forward(request, response);
			}
			else {
				System.out.println(em);
				String qry = "SELECT * FROM 1_users WHERE email='"+em+"' AND pass='"+pa+"'";
				ResultSet rs = DB.getconnection().createStatement().executeQuery(qry);	
				
				if(rs.next()) {
				
				String Role = rs.getString("role");
				System.out.println(Role);
				
				session.setAttribute("uid", rs.getInt(1)); //USERID
				session.setAttribute("uname", rs.getString("name")); //USERNAME
				session.setAttribute("uemail", rs.getString("email")); //USEREMAIL
				
				if(Role.equals("EMP")) {
					session.setAttribute("Role", 2);
					RequestDispatcher rd = request.getRequestDispatcher("HOME_Emp.jsp");
					rd.forward(request, response);
				}else if (Role.equals("QC")){
					session.setAttribute("Role", 3);
					RequestDispatcher rd = request.getRequestDispatcher("HOME_Qc.jsp");
					rd.forward(request, response);
				}else if(Role.equals("OP")){
					session.setAttribute("Role", 4);
					RequestDispatcher rd = request.getRequestDispatcher("HOME_Op.jsp");
					rd.include(request, response);
				}else {
					RequestDispatcher rd = request.getRequestDispatcher("Login.jsp?st=fail1");
					rd.include(request, response);
				}
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp?st=fail1");
				rd.include(request, response);
			}
		}
				
		}catch(Exception e1) {
			e1.printStackTrace();
		}
		
	}

}
