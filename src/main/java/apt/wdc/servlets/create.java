package apt.wdc.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class create
 */
@WebServlet("/create")
public class create extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(create.class.getName());

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public create() {
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
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/addphone.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		logger.info("name: " + name);
		int price = Integer.parseInt(request.getParameter("price"));
		logger.info("price: " + price);
		String description = request.getParameter("description");
		logger.info("description: " + description);
		String brand = request.getParameter("brand");
		logger.info("brand: " + brand);

		Connection cnn = null;
		try {
			cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wdc?useUnicode=true&characterEncoding=utf-8",
					"root", "");
			PreparedStatement ps = cnn
					.prepareStatement("insert into phone (name, brand, price, description) values (?,?,?,?)");

			ps.setString(1, name);
			ps.setString(2, brand);
			ps.setInt(3, price);
			ps.setString(4, description);
			ps.execute();
			cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.setStatus(200); 
	}

}
