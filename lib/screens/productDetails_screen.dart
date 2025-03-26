import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                product.thumbnail,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(product.description, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                    SizedBox(height: 12),
                    Divider(),
                    _buildInfoRow("Price", "\$${product.price}", Colors.green, FontWeight.bold),
                    _buildInfoRow("Discount", "${product.discountPercentage}%", Colors.redAccent, FontWeight.bold),
                    _buildInfoRow("Rating", "${product.rating} ⭐", Colors.orangeAccent, FontWeight.bold),
                    _buildInfoRow("Stock", "${product.stock} left", Colors.blueAccent, FontWeight.normal),
                    _buildInfoRow("Brand", product.brand, Colors.black87, FontWeight.normal),
                    SizedBox(height: 16),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, Color color, FontWeight fontWeight) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          Text(value, style: TextStyle(fontSize: 16, fontWeight: fontWeight, color: color)),
        ],
      ),
    );
  }
}
