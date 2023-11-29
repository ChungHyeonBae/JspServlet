package contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.jdbc.SQL;

import mybatis.MybatisTblDAO;
import mybatis.MybatisTblVO;

@WebServlet("*.mytbl")
public class MybatisTblController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		MybatisTblDAO dao = new MybatisTblDAO();
		
		if (path.equals("/insert.mytbl")) {
			MybatisTblVO vo = new MybatisTblVO();
			vo.setCol1(req.getParameter("col1"));
			vo.setCol2(req.getParameter("col2"));
			vo.setCol3(req.getParameter("col3"));
			dao.insert(vo);
			
		} else if (path.equals("/update.mytbl")) {
			MybatisTblVO vo = new MybatisTblVO();
			vo.setCol1(req.getParameter("col1"));
			vo.setCol2(req.getParameter("col2"));
			vo.setCol3(req.getParameter("col3"));
			
			dao.update(vo);
		} else if (path.equals("/delete.mytbl")) {
			MybatisTblVO vo = new MybatisTblVO();
			vo.setCol1(req.getParameter("col1"));
			dao.delete(vo);
		} else if (path.equals("/select.mytbl")) {
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
	}

}
