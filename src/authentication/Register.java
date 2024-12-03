package authentication;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DB;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String n = request.getParameter("un");
		String e = request.getParameter("em");
		String pa = request.getParameter("pw");
		String ph = request.getParameter("ph");
		String ad = request.getParameter("ad");
		String ro = request.getParameter("role");
		Random r = new Random();
		
		System.out.println(n+" - "+e+" - "+ph+" - "+ad+" - "+ro);
		
		try {
			String qry = "INSERT INTO 1_users (userid,name,email,pass,phone,address,role)"
							+ "VALUES('"+r.nextInt(100000)+"','"+n+"','"+e+"','"+pa+"','"+ph+"','"+ad+"','"+ro+"')";
			int i = DB.getconnection().prepareStatement(qry).executeUpdate();
			if(i>0) {
				System.out.println("Register Success !");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp?st=s");
				rd.forward(request, response);
			}else {
				System.out.println("Register Failed !");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp?st=f");
				rd.include(request, response);
			}
		}catch(Exception e1) {
			e1.printStackTrace();
		}
		
	}

}
