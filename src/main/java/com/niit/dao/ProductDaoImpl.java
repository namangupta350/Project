
package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Category;
import com.niit.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		System.out.println(product.getPname());
		session.save(product);
		session.flush();
		session.close();
		
	}

	public List<Product> getAllProduct() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product");
		List<Product> products = query.list();
		session.close();
		return products;
	}
	
	public Product getProductById(int pid)
	{
		
	Session session=sessionFactory.openSession();
	
	Product product=(Product)session.get(Product.class,pid);
	session.close();
	return product;
	}	
	
	public void updateProduct(Product product)
	{
	Session session=sessionFactory.openSession();
	System.out.println("iD of the product in dao" + product.getPid());
	session.update(product);
	session.flush();
	session.close();
	}
	
	public void deleteProduct(int id)
	{
	Session session=sessionFactory.openSession();
	Product product=(Product)session.get(Product.class, id);
	session.delete(product);
	session.flush();
	session.close();
	}
	
	
	public List<Category> getAllCategories() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		return categories;
	}
	
	public void addCategory(Category categories) {
		Session session = sessionFactory.openSession();
		System.out.println(categories.getCategoryName());
		session.save(categories);
		session.flush();
		session.close();
		
	}
	
}
