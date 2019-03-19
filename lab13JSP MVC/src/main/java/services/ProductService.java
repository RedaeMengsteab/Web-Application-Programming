package services;

import model.Product;

import java.util.List;

public interface ProductService {
    void insert(Product product);

    void delete(String id);

    List<Product> getProducts();
}
