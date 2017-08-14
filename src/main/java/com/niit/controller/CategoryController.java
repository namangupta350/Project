package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;


@Controller

public class CategoryController {
	
	@Autowired	
	ProductService ps;
	
	
	 @RequestMapping("/getcategory")
		public String getCategoryForm(Model model)
		{
		System.out.println("hello");
		
		
		 model.addAttribute("categories",new Category());
		
		return "Category";
		}
	 
	 
	 @RequestMapping("/all/product/searchbycategory")
	 public String selectByCategory(@RequestParam String searchCondition,Model model) {
		 model.addAttribute("product",ps.getAllProduct());
		 
		 
		 if(searchCondition.equals("All"))
			 model.addAttribute("searchCondition","");
		 else
			model.addAttribute("searchCondition",searchCondition);
		 return "ProductList";
	 }
	 
	 
	 @RequestMapping( value="/addcategories" ,method= RequestMethod.POST)
	 public String saveCategory(@Valid @ModelAttribute(value="categories") Category categories ,BindingResult result, HttpServletRequest request) 
	 {
	 	if(result.hasErrors())
	 	System.out.println("Hi");
	 	ps.addCategory(categories);
	 	return "redirect:/getproduct";
	 	}
	 
	 
	/* @RequestMapping("/getcategories")
	 public String getAllCategories(Model model)
	 {
		List<Category> c = ps.getAllCategories();
		System.out.println("hello");
		model.addAttribute("categories",c);
		return "redirect:/getproduct";
	  }*/

	

}
