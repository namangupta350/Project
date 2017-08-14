package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
import com.niit.model.User;
import com.niit.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	@RequestMapping("/registrationform")
	public String getRegistrationForm(Model model) {
		model.addAttribute("customer",new Customer());
		return "registrationform";
	}
	
	@RequestMapping("/newuser")
	public String fornullcart(Model model) {
		model.addAttribute("customer",new Customer());
		return "NewUserForCart";
	}
	
	@RequestMapping("/savecustomer")
	public String registraterCustomer(@Valid @ModelAttribute Customer customer,BindingResult result,Model model)
	{
		if(result.hasErrors())
		{
			return "registrationform";
		}
		User user=customerService.validateUsername(customer.getUser().getUsername());
		if(user!=null) {//duplicate username
			model.addAttribute("duplicateUsername","Username already exists");
			return "registrationform";
		}
		Customer duplicateCustomer=customerService.validateEmail(customer.getEmail());
		if(duplicateCustomer!=null) {
			model.addAttribute("duplicateEmail","Email address already existes");
			return "registrationform";
			}
		customerService.registerCustomer(customer);
		return "index";
	}
	
	
}
