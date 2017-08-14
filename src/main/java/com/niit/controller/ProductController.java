
                                  
package com.niit.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
public class ProductController {

	@Autowired	
	ProductService ps;
	
	
	

@RequestMapping(value="/getproduct")
	public String getProductForm(Model model)
	{
	System.out.println("hello");
	 List<Category> categories=ps.getAllCategories();
	
	 model.addAttribute("categories",categories);
	model.addAttribute("product",new Product());
	return "ProductForm";
	}

@RequestMapping( value="/addNewProduct" ,method= RequestMethod.POST)
public String saveProduct(@Valid @ModelAttribute(value="product") Product product , HttpServletRequest request, BindingResult result) 
{
	if(result.hasErrors()) 
		return "ProductForm";
	System.out.println("hi");
	System.out.println(product.getPname());
	ps.addProduct(product);
	
	MultipartFile image=product.getImage();
	
	Path path=Paths.get("C:/Users/Naman Gupta/eclipse-workspace/demo1/src/main/webapp/WEB-INF/resources/images/"+ product.getPid() +".png");
	 System.out.println("PATH:"+path);
		try {
			image.transferTo(new File(path.toString()));
		}
		catch(IllegalStateException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch(IOException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return "redirect:/getallproduct";
	}


 @RequestMapping("/getallproduct")
 public String getAllProduct(Model model)
 {
	List<Product> l = ps.getAllProduct();
	model.addAttribute("product",l);
	return "ProductList";
  }
 
 @RequestMapping("/viewproduct/{pid}")
 public String  viewProduct(@PathVariable int pid,Model model)
 {
	 Product product=ps.getProductById(pid);
	 model.addAttribute("pd",product);
	 return "viewproduct";
 }
 
 @RequestMapping("/deleteform/{pid}")
 public String  deleteProductForm(@PathVariable int pid)
 {
	 ps.deleteProduct(pid);
	 return "redirect:/getallproduct";
 }
 
 @RequestMapping("/editform/{pid}")
 public String  editProductForm(@PathVariable int pid,Model model)
 {
	 List<Category> categories=ps.getAllCategories();
	 model.addAttribute("categories",categories);
	 Product product=ps.getProductById(pid);
	 model.addAttribute("product",product);
	 
	 return "editform";
 }
  
 @RequestMapping("/editProduct/{pid}")
public String editProduct(@ModelAttribute(value="product") Product product)
	{
	System.out.println("inside save product");
	ps.updateProduct(product);
	
	MultipartFile image=product.getImage();
	
	Path path=Paths.get("C:/Users/Naman Gupta/eclipse-workspace/demo1/src/main/webapp/WEB-INF/resources/images/"+ product.getPid() +".png");
	 System.out.println("PATH:"+path);
		try {
			image.transferTo(new File(path.toString()));
		}
		catch(IllegalStateException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch(IOException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	return "redirect:/getallproduct";
 }
 

 
}

