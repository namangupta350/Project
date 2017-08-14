package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addCartItem(CartItem cartItem) {
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(cartItem);
		session.flush();
		session.close();
		
		
	}

	public void removeCartItem(int cartItemId) {
		Session session=sessionFactory.openSession();
		CartItem cartItem=(CartItem)session.get(CartItem.class,cartItemId);
		session.delete(cartItem);
		session.flush();
		session.close();
		
	}

	public void removeAllCartItem(int id) {
		Session session=sessionFactory.openSession();
		Cart cart=(Cart) session.get(Cart.class,id);
		List<CartItem> cartItems=cart.getCartItems();
		for(CartItem cartItem:cartItems) {
			session.delete(cartItem);
			session.flush();
			
		}
		
	}
	
	public Cart getCart(int cartId) {
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		session.flush();
		session.close();
		return cart;
	}
	
}
