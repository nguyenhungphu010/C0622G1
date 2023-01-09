package com.phu.repository.product;

import com.phu.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.transaction.Transactional;

public interface ProductRepository extends JpaRepository<Product, Integer> {

    @Query(value = "select * from product where name like %:searchName% and is_delete = 0", nativeQuery = true,
            countQuery = "select count(*) from (select * from product where name like %:searchName% and is_delete = 0) product")
    Page<Product> findProductByAll(Pageable pageable,
                                   @Param("searchName") String searchName);

    @Modifying
    @Transactional
    @Query(value = "update product set is_delete = 1 where id=: id", nativeQuery = true)
    void deleteProductById(int id);
}
