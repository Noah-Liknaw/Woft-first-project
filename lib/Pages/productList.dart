 import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woft_1st_project/Pages/about.dart';
import 'package:woft_1st_project/screens/order_placed_screen.dart';

import '../models/productTypes_model.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient:         LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: <Color>[Color.fromRGBO(4, 99, 4, 1),Color.fromRGBO(76, 161, 70, 1)]),
      ),
    ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              FractionallySizedBox(
                widthFactor: 1.0,
                child: Image.asset("bg-for-product-detail.png"),
              ),
              FractionallySizedBox(
                widthFactor: 1.0,                
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(children: [
                    Text("Welcome to Ethiopian Digital Farmers", style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),),
                    Text("Join us on our mission to shape the future of agriculture. See more for today and unlock a world of possibilities for your farming endeavors. Together, let’s cultivate a brighter future for agriculture!",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 11,color: Colors.white), textAlign: TextAlign.center,),
                    ElevatedButton(onPressed: (){},child: Text("Learn more"),
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Color.fromRGBO(4, 99, 4, 100),
                    foregroundColor: Colors.white,
                    minimumSize: Size(151, 35),
                  ),
                    ),
                  ]),
                ),
              )
            ],
          ),
          
            Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: FractionallySizedBox(
                          widthFactor: 1.0,
                child: Text("Lorem ipsum dolor",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,fontSize: 17, color: Colors.black,),)
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                  ProductTypes(),
                  ProductTypes(),
                  ProductTypes(),
                  ProductTypes(),
                  ProductTypes(),
                  ProductTypes(),
                ],
              ),
              )
            ],
          ),
          
          
        ],
      )
    );
  }
  }