

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class KaupController
 * 
 * @ Date : someday;
 * @ Author : ;
 * @ Story : 키와 몸무게가 입력되면 카우푸지수와 메시지를 웹브라우저에 랜더링 하는 역활 ;
 * 랜더링(웹에 있는값을 자바에 뿌리는역활?)
 */
@WebServlet("/model2/kaup.do")
public class KaupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	/*
    public KaupController() {
        super();
        // TODO Auto-generated constructor stub
    }
*/
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		double height = Double.parseDouble(request.getParameter("height"));
		double weight = Double.parseDouble(request.getParameter("weight"));
		// KaupBean bean = new KaupBean(height,weight);
		
		
		KaupService ks = new KaupServiceImp1(height, weight);
		
		
		request.setAttribute("height", height);
		request.setAttribute("weight", weight);
	
		request.setAttribute("msg", ks.getResultMsg());
	    //service.setKaupIndex(height, weight); 해도되지만..
		 
		//int index = service.getKaupIndex(height, weight);
		
		//request.setAttrivute("index",index);
		
		/*//스프링에서 경로보내는 방식이 다르다.. dispatcher , sysout 과 scan 과 같은 이치다.. 그냥 일단 쓰라!!!!
		 *  RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/kaup.jsp"); 
		 *  dispatcher.forward(request, response);	
		 */
		
		
		 RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/kaup.jsp"); 
          // 절대경로 이기 때문에!!
        dispatcher.forward(request, response);	
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
*/

}

