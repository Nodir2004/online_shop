import 'package:flutter/material.dart';
import 'package:state_provider/2-lesson/data/models/product_model/product_model.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({required this.product, super.key});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 300,
      margin: EdgeInsets.all(12),
      height: 300,
      child: Column(
        children: [
          Image.network(height: 30,
          width: 30,
            product.images.toString(),
          ),
          //Text(product.title.toString())
        ],
      ),
    );
  }
}
