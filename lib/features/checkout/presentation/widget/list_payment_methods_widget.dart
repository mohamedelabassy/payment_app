import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widget/payment_method_widget.dart';

class ListPaymentMethodsWidget extends StatefulWidget {
  const ListPaymentMethodsWidget({super.key});

  @override
  State<ListPaymentMethodsWidget> createState() =>
      _ListPaymentMethodsWidgetState();
}

class _ListPaymentMethodsWidgetState extends State<ListPaymentMethodsWidget> {
  final List<String> paymentMethodsItems = const [
    "assets/images/cardImage.svg",
    "assets/images/paypalImage.svg",
    "assets/images/payImage.svg"
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentMethodsItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodWidget(
                  isActive: activeIndex == index,
                  image: paymentMethodsItems[index],
                ),
              ),
            );
          }),
    );
  }
}
