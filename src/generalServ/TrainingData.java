package generalServ;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DB;
import utility.LOC;

@WebServlet("/TrainingData")
public class TrainingData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest r, HttpServletResponse rs) throws ServletException, IOException {
		
 String wqd = LOC.FilePath() + "TrainingData/BarcodeData.csv";
 
		try {
			String qry = "LOAD DATA INFILE '" + wqd + "'" + "INTO TABLE 3_barcodedata FIELDS TERMINATED BY ','"
					+ "OPTIONALLY ENCLOSED by '\"'";

			int i = DB.getconnection().prepareStatement(qry).executeUpdate();

			if (i > 0) {
				System.out.print("Success");
				RequestDispatcher rd = r.getRequestDispatcher("EMP_TrainData1.jsp");
				rd.include(r, rs);
			} else {
				System.out.print("Not Success");
				RequestDispatcher rd = r.getRequestDispatcher("EMP_TrainData.jsp?st=fail");
				rd.include(r, rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
}

}
