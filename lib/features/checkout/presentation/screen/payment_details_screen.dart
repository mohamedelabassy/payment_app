import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/screen/Payment_details_screen_body.dart';
import 'package:payment_app/features/checkout/presentation/widget/app_bar_widget.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsScreenBody(),
    );
  }
}
