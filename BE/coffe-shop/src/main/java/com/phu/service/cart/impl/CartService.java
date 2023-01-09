package com.phu.service.cart.impl;

import com.phu.model.Cart;
import com.phu.repository.cart.CartRepository;
import com.phu.service.cart.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService implements ICartService {

    @Autowired
    private CartRepository cartRepository;

    @Override
    public List<Cart> getCartList(String username) {
        return this.cartRepository.findByUser(username);
    }

    @Override
    public void saveCart(Cart cart) {
        Cart cart1 = findByUserIdAndBookId(cart.getUser().getId(), cart.getProduct().getId());
        if (cart1 == null) {
            cart.setQuantity(1);
            cart.setStatus(false);
            this.cartRepository.save(cart);
        } else {
            cart1.setQuantity(cart1.getQuantity() + 1);
            this.cartRepository.save(cart1);
        }
    }

    @Override
    public void deleteCart(Integer id) {
        this.cartRepository.changeCartStatus(id);
    }

    @Override
    public void updateCartList(List<Cart> cartList) {
        this.cartRepository.saveAll(cartList);
    }

    @Override
    public Cart findByUserIdAndBookId(Integer userId, Integer bookId) {
        return this.cartRepository.findByUser_IdAndProduct_IdAndStatus(userId, bookId, false);
    }

    @Override
    public void payCart(List<Cart> selectedCarts) {
        this.cartRepository.saveAll(selectedCarts);
    }
}
