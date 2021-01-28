import 'package:flutter/material.dart';

class Product {
  Product({
    @required this.productImage,
    @required this.name,
    @required this.brand,
    @required this.price,
    this.totalPrice,
    @required this.desc,
    this.moreDesc,
    this.productType,
    this.weight,
    @required this.productID,
    @required this.pet,
    @required this.category,
    this.subCategory,
    this.service,
    this.quantity,
  });

  final String productImage;
  final String name;
  final String brand;
  final double price;
  final double totalPrice;
  final String desc;
  final String moreDesc;
  final String productType;
  final String weight;
  final String productID;
  final String pet;
  final String category;
  final String subCategory;
  final String service;
  final int quantity;
}
