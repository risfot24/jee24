package com.hompage.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hompage.web.serviceimpls.HelloServiceImp1;
import com.hompage.web.services.HelloService;

/**
 * Servlet implementation class NowServlet
 * 
 *  제목이 HelloServlet -> HelloController
 */
@WebServlet({"/name/hello.do","/hi.do"})  /*가상경로 - 보안*/
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  /*생성자 안씀!*/

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    request.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html ; charset=UTF-8");
	     //두개 따로 줄필요가 없다.. 설정이 안된대서는 필요하다!!
	    
	  // 여기위에잇는 리퀘스트로 받아서..
	    
	    
	    /*
	    PrintWriter out = response.getWriter();
	    
	    out.println("<html>");
	    out.println("<head><title>인 사 </title></head>");
	    out.println("<body>");
	    out.println("안녕하세요, ");  
	    out.println("님");
	    out.println("</body></html>");
	  
	  이건 지워지는것
	  */
	    
	  /*   
	    이건 살아있는것
	  String name = request.getParameter("name");
	   request.setAttribute("name", name);
	   
	   */
	    
	 String path =  request.getServletPath() ;
	 System.out.println("Path : "+path);
	 
	 /*
	 if(path.equalsIgnoreCase("/name/hello.do")){
		 
		  goHello(request, response);
		 
	 }else if(path.equalsIgnoreCase("/hi.do")){
		 goHi(request, response);
		  
	 }
	 */
	 switch(path){
	 case "/name/hello.do":   goHello(request, response);break;
	 case "/hi.do" :  goHi(request, response); break;
	 
	 
	 }
	 
	 
  
	   
	    
	    // 웹 컨텐츠가 슬러시 (/) , 
	   //관제탑 이다..
	 /*
	   RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hello.jsp"); 
	                                                               // 절대경로 이기 때문에!!
	   dispatcher.forward(request, response);
	*/
	}

	private void goHi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HelloService hs = new HelloServiceImp1();
		    String msg = hs.greet();
			System.out.println("msg : "+msg);
		    
			String name = request.getParameter("name"); // 키값 , 리터럴 상수 여서.. 여기에서는 파라미터로 오기때문에 공백도 인식한다..
			request.setAttribute("name", msg+name);     // 키 , 벨류
			                 
			   // 웹 컨텐츠가 슬러시 (/) , 
			   //관제탑 이다..
			   RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hi.jsp"); 
			                                                               // 절대경로 이기 때문에!!
			   dispatcher.forward(request, response);
	}

  private void goHello(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	    HelloService hs = new HelloServiceImp1();
	    String msg = hs.greet();
		System.out.println("msg : "+msg);
	    
		String name = request.getParameter("name"); // 키값 , 리터럴 상수 여서.. 여기에서는 파라미터로 오기때문에 공백도 인식한다..
		request.setAttribute("name", msg+name);     // 키 , 벨류
		                 
		   // 웹 컨텐츠가 슬러시 (/) , 
		   //관제탑 이다..
		   
		   RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hello.jsp"); 
		                                                               // 절대경로 이기 때문에!!
		   dispatcher.forward(request, response);
}

	

}
