package generalServ;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.DB;

@WebServlet("/QcList")
public class QcList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession ses = request.getSession();
		
		String scfile = request.getParameter("file1");
		
		System.out.println(request.getParameter("file1"));
		
		File file1 = new File(request.getParameter("file1"));

		BufferedReader br1 = new BufferedReader(new FileReader(file1));

		String thisLine = null;

		List<String> list1 = new ArrayList<String>();

		while ((thisLine = br1.readLine()) != null) {
		    list1.add(thisLine);
		}

		br1.close();

		List<String> list2 = new ArrayList<String>();
		List<String> list3 = new ArrayList<String>();

		try{

			String sql = "SELECT sku FROM 3_barcodedata";
			ResultSet rs = DB.getconnection().createStatement().executeQuery(sql);
			while(rs.next()){
				list2.add(rs.getString(1));	
			}
			
			List<String> differenceBetweenTwoList = new ArrayList<>(list1);
		    differenceBetweenTwoList.removeAll(list2);
		    System.out.println(differenceBetweenTwoList);
		    ses.setAttribute("dup", differenceBetweenTwoList);
		    ses.setAttribute("uptotal", list1);
		    ses.setAttribute("dupc", differenceBetweenTwoList.size());
		    ses.setAttribute("uptotalc", list1.size());
		    response.sendRedirect("QC_Viewproducts.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}

	}

}
