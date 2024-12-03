package generalServ;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import utility.DB;

@WebServlet("/UploadProduct")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class UploadProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("pid");
		String pname = request.getParameter("pname");
		String unt = request.getParameter("unt");
		String cst = request.getParameter("cost");
		String dt = request.getParameter("date");
		final Part filePart = request.getPart("image");
		String spec = request.getParameter("fileData");
		
		InputStream inputStream = null; // input stream of the upload file
		
		BufferedImage bImage = null;
		
			inputStream = filePart.getInputStream();
			bImage = ImageIO.read(inputStream);
			ImageIO.write(bImage, "jpg", new File(utility.LOC.ProjPath()+ "\\WebContent\\products\\"+pid+"_"+pname+".jpg"));
		
		String imgPath = "products/"+pid+"_"+pname+".jpg";
		try{
			String sql = "INSERT INTO 2_prod(pid,pname,unit,cost,date,img,spec)"
					+ " VALUES('"+pid+"','"+pname+"','"+unt+"','"+cst+"','"+dt+"','"+imgPath+"','"+spec+"')";
		    int i = DB.getconnection().prepareStatement(sql).executeUpdate();
		    if(i>0) {
		    	
		    	RequestDispatcher rd = request.getRequestDispatcher("HOME_Admin.jsp?st=s");
				rd.forward(request, response);
		    }else {
		    	RequestDispatcher rd = request.getRequestDispatcher("AD_UploadProduct.jsp?st=ns");
				rd.include(request, response);
		    }
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
