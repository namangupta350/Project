package com.niit.dao;

import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.CustomerOrder;
import com.niit.model.ShippingAddress;

public interface CustomerOrderDao {
	
	CustomerOrder createOrder(Cart cart);

}