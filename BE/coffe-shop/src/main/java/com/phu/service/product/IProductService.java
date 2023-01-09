package com.phu.service.product;

import com.phu.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

public interface IProductService {

    Page<Product> findAllProduct(Pageable pageable, String searchName);

    Optional<Product> findProductById (Integer id);

    void deleteProductById(Integer id);

    void saveProduct(Product product);
}
