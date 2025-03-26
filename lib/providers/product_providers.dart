import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/api_services.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  List<Product> _filteredProducts = [];
  bool _isLoading = false;

  List<Product> get products => _filteredProducts;
  bool get isLoading => _isLoading;

  Future<void> loadProducts() async {
    _isLoading = true;
    notifyListeners();

    try {
      _products = await ApiService.fetchProducts();
      _filteredProducts = _products;
    } catch (e) {
      print("Error fetching products: $e");
    }

    _isLoading = false;
    notifyListeners();
  }

  void searchProducts(String query) {
    if (query.isEmpty) {
      _filteredProducts = _products;
    } else {
      _filteredProducts = _products
          .where((product) =>
          product.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}