package service;

import java.util.List;

import beans.Customer;
import dao.CustomerDAO;

public class CustomerServiceImpl implements CustomerService {
	private CustomerDAO customerDAO;
	
	public CustomerServiceImpl() {
		// TODO Auto-generated constructor stub
		this.customerDAO = new CustomerDAO();
	}
	@Override
	public List<Customer> getAll() {
		// TODO Auto-generated method stub
		return customerDAO.getAllCustomer();
	}

}
