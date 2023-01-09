package com.phu.service.product.impl;

import com.phu.model.Product;
import com.phu.repository.product.ProductRepository;
import com.phu.service.product.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ProductService implements IProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public Page<Product> findAllProduct(Pageable pageable, String searchName) {
        return this.productRepository.findProductByAll(pageable, searchName);
    }

    @Override
    public Optional<Product> findProductById(Integer id) {
        return this.productRepository.findById(id);
    }

    @Override
    public void deleteProductById(Integer id) {
        this.productRepository.deleteProductById(id);
    }

    @Override
    public void saveProduct(Product product) {
        this.productRepository.save(product);
    }
}
