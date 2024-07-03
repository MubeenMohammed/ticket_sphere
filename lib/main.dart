import 'package:flutter/material.dart';
import 'package:ticket_sphere/widgets/seller_home_page.dart';
void main() {
  runApp(MaterialApp(
    title: "Event Form",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const SellerHomePage(),
  ));
}
