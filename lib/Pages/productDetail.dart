import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:woft_1st_project/Pages/about.dart';
import 'package:woft_1st_project/screens/order_placed_screen.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Color.fromRGBO(4, 100, 4, 100),
        title: Text("Product Detail",textAlign: TextAlign.center,),
      ),
      body: Column(
        children: [ 
          Image.network("")
        ],
      )
      );
  }
  }