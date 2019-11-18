package actions;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import beans.Customer;
import service.CustomerService;
import service.CustomerServiceImpl;

public class CustomerAction extends ActionSupport {
	private static final long serialVersionUID = 7299264265184515893L;
	private List<Customer> list;
	private CustomerService customerService = new CustomerServiceImpl();
	
	public String viewCustomer() {
        return "customer";
    }
	
	public String getAll(){
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("getAll");
		list = customerService.getAll();
		
		for(Customer c : list) {
			System.out.println(c.toString());
		}
		request.setAttribute("list", list);
		return "success";
	}

	public List<Customer> getList() {
		return list;
	}

	public void setList(List<Customer> list) {
		this.list = list;
	}
	
	
}
