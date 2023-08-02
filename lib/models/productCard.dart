import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:woft_1st_project/Pages/productDetail.dart';
import 'package:woft_1st_project/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(this.product);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const ProductDetail()));
              ;
      },
      child: Container(
      width: 130,
      height: 165,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: [
      BoxShadow(color: Colors.green, spreadRadius: 3),
    ],
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(product.imageUrl),
          Text(product.name,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 11, color: Colors.black),),
          Text(product.price.toString()+" ETB", style: GoogleFonts.istokWeb(fontSize: 14 ,fontWeight: FontWeight.w800, color: Colors.black),),
          ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Color.fromRGBO(4, 99, 4, 100),
                    foregroundColor: Colors.white,
                    minimumSize: Size(100, 28),
                  ), 
              child: Text("Add to cart",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w500),)),
        ],
      ),
    ),
    );   
  }
}