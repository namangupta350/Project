package com.niit.service;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface ProductService {
	
	public void addProduct(Product product);

	public List<Product> getAllProduct();
	
	public Product getProductById(int id);
	
	void updateProduct(Product product);
	
	void deleteProduct(int id);
	
    List<Category> getAllCategories();
	
	public void addCategory(Category categories);
	
	
	
}
