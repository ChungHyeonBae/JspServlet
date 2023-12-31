package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import solo.SoloDAO;
import solo.SoloVO;

@WebServlet("*.sg")
public class SoloController extends HttpServlet {
	RequestDispatcher rd ;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath().replace("/", "");//
		SoloDAO dao = new SoloDAO();
		
		if(path.equals("list.sg")) {
			rd = req.getRequestDispatcher("solo/list.jsp");
			req.setAttribute("list", dao.select());
			rd.forward(req, resp);
		
		}
	
	}

}