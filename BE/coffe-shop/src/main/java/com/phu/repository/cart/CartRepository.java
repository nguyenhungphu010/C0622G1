package com.phu.repository.cart;

import com.phu.model.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;

public interface CartRepository extends JpaRepository<Cart, Integer> {


    @Query(value = "select cart.id, cart.status, cart.product_id, cart.user_id, cart.quantity, cart.order_id from cart join user on user.id = cart.user_id where user.username = ?1 and cart.status = false order by cart.id desc", nativeQuery = true)
    List<Cart> findByUser(String username);

    Cart findByUser_IdAndProduct_IdAndStatus(Integer userId, Integer productId, boolean status);


    @Modifying
    @Transactional
    @Query(value = "update cart set status = true where id =?1", nativeQuery = true)
    void changeCartStatus(Integer id);
}
