import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/screen/my_cart_screen.dart';

void main() {
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartScreen(),
    );
  }
}
