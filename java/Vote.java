package OnlineVotingSystem2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Vote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
	//	PrintWriter out = response.getWriter();
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection  con = db.getConnection();

		String vote_card_number = request.getParameter("voterNumber");
		String party = request.getParameter("party");

		try {

        	PreparedStatement preparedStatement = con.prepareStatement("insert into vote(vote_card_number,party)values ('"+vote_card_number+"','"+party+"')");

        	preparedStatement.executeUpdate();

            response.sendRedirect("index.jsp");

        } catch (SQLException e) {
			e.printStackTrace();
		}
	}

}