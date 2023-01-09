package com.phu.service.cart;

import com.phu.model.Cart;

import java.util.List;

public interface ICartService {
    List<Cart> getCartList(String username);

    void saveCart(Cart cart);

    void deleteCart(Integer id);

    void updateCartList(List<Cart> cartList);

    Cart findByUserIdAndBookId(Integer userId, Integer bookId);

    void payCart(List<Cart> selectedCarts);
}
