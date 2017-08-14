package com.niit.dao;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface ProductDao {

	public void addProduct(Product product);

	public List<Product> getAllProduct();
	
	public Product getProductById(int pid);
	
	void updateProduct(Product product);
	
	void deleteProduct(int id);	
	
    List<Category> getAllCategories();
	
	public void addCategory(Category categories);
	
}
