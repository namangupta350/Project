package com.niit.dao;

import com.niit.model.Cart;
import com.niit.model.CartItem;

public interface CartItemDao {
	
	void addCartItem(CartItem cartItem);
	
	void removeCartItem(int cartItemId);
	
	public void removeAllCartItem(int id);
	
	public Cart getCart(int cartId);
}
