// ignore_for_file: prefer_const_constructors

import 'package:core_ui/widgets/elements/texts/price_text.dart';
import 'package:core_ui/widgets/elements/texts/text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:product/features/home/domain/entities/product.dart';


class ProductDeatilScreen extends StatefulWidget{
  final ProductToDisplay product;

 const ProductDeatilScreen({super.key, required this.product});
  
  @override
  State<ProductDeatilScreen>  createState() => _ProductDeatilScreenState(); 
}

  class _ProductDeatilScreenState extends State<ProductDeatilScreen>{
   
  @override
Widget build(BuildContext context) {
  final product = widget.product;
  return Scaffold(
    appBar: AppBar(
      title: const Text('Product Detail'),
      actions: [
        IconButton(
          onPressed: () {
            // Implement your logic for adding the product to cart
          },
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    ),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.network(
              product.imageUrl,
              height: 300,
              width: 200,
            ),
            TextTitle(
              title: product.name,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            Text(
              'Category: ${product.category}',
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            const SizedBox(height: 10),
            if (product.description != null)
              Text(
                '${product.description}',
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            const SizedBox(height: 20),
            PriceText(price: '${product.price}\$'),
          ],
        ),
      ),
    ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Implement your logic for adding the product to cart
              },
              child: Text('Add to Cart'),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                // Implement your logic for buying the product
              },
              child: Text('Buy Now'),
            ),
          ),
        ],
      ),
    ),
  );
  
}

  }