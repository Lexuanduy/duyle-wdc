package apt.wdc.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apt.wdc.entities.Phone;

/**
 * Servlet implementation class list
 */
@WebServlet("/list")
public class list extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public list() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet( HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Phone> phones = new ArrayList<Phone>();

		Connection cnn = null;
		try {
			cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wdc?useUnicode=true&characterEncoding=utf-8",
					"root", "");
			PreparedStatement ps = cnn.prepareStatement("select * from phone");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Phone phone = new Phone();
				String brand = rs.getString("brand");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String description = rs.getString("description");
				phone.setName(name);
				phone.setBrand(brand);
				phone.setPrice(price);
				phone.setDescription(description);
				phones.add(phone);
			}
			cnn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("phones", phones);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/listphones.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
