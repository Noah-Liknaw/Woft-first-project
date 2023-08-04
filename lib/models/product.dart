import 'package:flutter/material.dart';
import 'dart:convert';
class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product(this.name, this.price, this.imageUrl);
  factory Product.fromJson(Map<String,dynamic> json){
    return Product(json['product_name'],json["product_price"], json['product_image_url']);
  } 
}