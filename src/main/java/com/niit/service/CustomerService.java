package com.niit.service;

import com.niit.model.Customer;
import com.niit.model.User;
public interface CustomerService {
	
	void registerCustomer(Customer customer);
	User validateUsername(String username);
	Customer validateEmail(String email);
	Customer getCustomerByusername(String username);

}
