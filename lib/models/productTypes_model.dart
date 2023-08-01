 import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woft_1st_project/Pages/about.dart';
import 'package:woft_1st_project/screens/order_placed_screen.dart';

class ProductTypes extends StatefulWidget {
  const ProductTypes({super.key});

  @override
  State<ProductTypes> createState() => _ProductTypesState();
}

class _ProductTypesState extends State<ProductTypes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 62.85,
          height: 58.44,
          color: Color.fromRGBO(76, 161, 70, 1),
        ),
        Image.asset("veg1.png"),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text("Vegetables",style: GoogleFonts.poppins(color: Colors.black, fontSize: 11, fontWeight: FontWeight.w800),),
          ),
)
      ],
    ),
    ); 
  }
  }