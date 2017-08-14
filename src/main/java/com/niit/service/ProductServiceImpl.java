package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Service
public class ProductServiceImpl  implements ProductService
{
    
	@Autowired
	ProductDao pd;
	
	public void addProduct(Product product) {
		pd.addProduct(product);
	}

	public List<Product> getAllProduct() {
		
		return pd.getAllProduct();
	}	
	
	public Product getProductById(int id)
	{
		return pd.getProductById(id);
	}
	
	public void updateProduct(Product product)
	{
		pd.updateProduct(product);
	}	
	
	public void deleteProduct(int id)
	{
		pd.deleteProduct(id);
	}	
	
	
	public List<Category> getAllCategories(){
		return pd.getAllCategories();
	}
	
	public void addCategory(Category categories) {
		pd.addCategory(categories);
	
	}
	
}	
