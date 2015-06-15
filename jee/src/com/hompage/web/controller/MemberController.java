package com.hompage.web.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hampage.web.beans.MemberBean;
import com.hompage.web.serviceimpls.MemberServiceImp1;
import com.hompage.web.services.MemberService;

/**
 * Servlet implementation class MemberController
  @ Date : someday;
  @ Author : ;
  @ Story :  회원가입과 로그인 담당하는 컨트롤러;
  
 */
@WebServlet({"/model2/join.do","/model2/login.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberBean MB = new MemberBean();
	MemberService ms = new MemberServiceImp1();
	Map<String, Object> map= new HashMap<String, Object>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    /*
	public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }
   */
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*ms.join(id, password, name, age, addr);*/
	}


	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
       String path =  request.getServletPath() ;
		
		System.out.println("Path : "+path);
		//MemberService ms; 
		switch(path){
		  
		case "/model2/join.do" : 
		  /* gojoin(request, response);*/ 
		    String id = request.getParameter("id");
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String addr = request.getParameter("address");
			
				
			MB.setId(id); 
			MB.setPassword(password); 
			MB.setName(name);
			MB.setAge(age);
			MB.setAddr(addr);    
		    
			ms.join(id, password, name, age, addr);
			
			request.setAttribute("id", id); request.setAttribute("password", password); request.setAttribute("name", name);
			request.setAttribute("age", age); request.setAttribute("addr", addr);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/memberForm.jsp"); 
	         // 절대경로 이기 때문에!!
	         dispatcher.forward(request, response);
		 
		 break;   
		case "/model2/login.do" : 
		 //gologin(request, response); 
			  String id2 = request.getParameter("id");
			  String password2 = request.getParameter("password");
			  
			  
			  
			  String msg = ms.login(id2, password2);
			  
			  if(msg.equals("성공")){
			  request.setAttribute("id", MB.getId() );
			  request.setAttribute("password", MB.getPassword());
			  request.setAttribute("name", MB.getName());
			  request.setAttribute("age", MB.getAge());
			  request.setAttribute("address", MB.getAddr());
			  
			      
			  RequestDispatcher dispatcher2 = request.getRequestDispatcher("/views/model2/member.jsp"); 
		        // 절대경로 이기 때문에!!
		        dispatcher2.forward(request, response);
			  break;
			  }else{
		      /*if(!(id2.equals(MB.getId()) && password2.equals(MB.getPassword())) ){}*/
		    	  /*
		    	  request.setAttribute("id2", MB.getId());
		    	  request.setAttribute("password2", MB.getPassword());
		    	  */
				  request.setAttribute("msg", msg);
				  
		    	  RequestDispatcher dispatcher3 = request.getRequestDispatcher("/views/model2/loginFail.jsp"); 
			        // 절대경로 이기 때문에!!
			        dispatcher3.forward(request, response);
		    	  
		      
		        
		        
			break;
			  }
		
		}
		
		
	}
	

	

}
