package com.niit.service;

import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.CustomerOrder;
import com.niit.model.ShippingAddress;

public interface CustomerOrderService {
CustomerOrder createOrder(Cart cart);
}