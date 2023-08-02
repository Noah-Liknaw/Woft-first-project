import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key,});
  
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Image.asset("name"),
          Text("name")
        ],
      ),
    );
  }
}