package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
import com.niit.model.User;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDao customerDao;
	public void registerCustomer(Customer customer) {
		customerDao.registerCustomer(customer);
	}
	
	public User validateUsername(String username) {
		return customerDao.validateUsername(username);
	}
	
	public Customer validateEmail(String email) {
		return customerDao.validateEmail(email);
	}


	public Customer getCustomerByusername(String username) {
		return customerDao.getCustomerByUsername(username);
	}
	

}
