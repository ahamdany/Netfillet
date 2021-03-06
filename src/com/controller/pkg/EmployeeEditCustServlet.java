package com.controller.pkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.entity.pkg.Customer;
import com.entity.pkg.Employee;
import com.service.pkg.CustomerService;
import com.service.pkg.EmployeeService;
import com.service.pkg.ValidateUser;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/EmployeeEditCustServlet")
public class EmployeeEditCustServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeEditCustServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out =  response.getWriter();
		
		//Enumeration<String> params = request.getParameterNames(); 
//		ArrayList<String> parameters = new ArrayList<String>();
//		
//		while(params.hasMoreElements()){
//			 String paramName = (String)params.nextElement();
//			 parameters.add(request.getParameter(paramName));
//			 
//			 }
		
		CustomerService service = new CustomerService(Integer.parseInt(request.getParameter("customerID")));
	    if(service.customerExists()){  
	    	Customer customer = service.createUser();
	    	HttpSession session = request.getSession();
	    	session.setAttribute("Customer", customer);
	    	RequestDispatcher rd=request.getRequestDispatcher("employee_admin/html/edit_customer.jsp");  
    		rd.forward(request,response); 
	    }
	    else{  
	    	
	        RequestDispatcher rd=request.getRequestDispatcher("/employee_admin/html/CustomerEditValidation.jsp");  
	        rd.include(request,response);  
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
