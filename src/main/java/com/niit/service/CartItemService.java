package com.niit.service;

import com.niit.model.Cart;
import com.niit.model.CartItem;

public interface CartItemService {
	
	void addCartItem(CartItem cartItem);
	
	void removeCartItem(int cartItemId);
	
	void RemoveAllCartItems(int id);

	Cart getCart(int cartId);
}
