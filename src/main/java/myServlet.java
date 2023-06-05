

import java.io.IOException;
import jspdemo.VaccinationHistoryDAO;
import jspdemo.VaccinationHistory;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.io.ObjectOutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class myServlet
 */
@WebServlet("/myServlet")
public class myServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<VaccinationHistory> vh;
		VaccinationHistoryDAO dao;
		try {
			dao = new VaccinationHistoryDAO();
			vh = new ArrayList<>(dao.getAllVacHistory());

	        // Set the content type and character encoding of the response
	        response.setContentType("application/octet-stream");
	        response.setCharacterEncoding("UTF-8");
	        
	        ObjectOutputStream oos = new ObjectOutputStream(response.getOutputStream());
	        oos.writeObject(vh);
	        oos.flush();
	        oos.close();
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
