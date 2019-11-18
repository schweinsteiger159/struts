package dao;

import java.util.ArrayList;
import java.util.List;

import beans.Customer;

public class CustomerDAO {
	private static ArrayList<Customer> customers;
	static {
		customers = new ArrayList<Customer>();
		customers.add(new Customer(1, "Quang"));
		customers.add(new Customer(2, "Quang"));
    }

    public List getAllCustomer() {
        return customers;
    }
}
