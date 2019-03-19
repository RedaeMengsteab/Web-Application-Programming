package services;

import data.AppData;
import model.Product;

import java.util.List;

public class ProductServiceImpl implements ProductService {

    @Override
    public void insert(Product product) {
        AppData.getProducts().add(product);
    }

    @Override
    public void delete(String id) {
        List<Product> products = AppData.getProducts();
        for (int i = 0; i < products.size(); i++) {
            if (id.equals(products.get(i).getNo())) {
                products.remove(i);
            }
        }
    }

    @Override
    public List<Product> getProducts() {
        return AppData.getProducts();
    }
}
