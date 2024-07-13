import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:payment_app/features/checkout/presentation/widget/custom_button_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/list_payment_methods_widget.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(32),
          ListPaymentMethodsWidget(),
          Gap(16),
          CustomButtonWidget(text: 'Continue')
        ],
      ),
    );
  }
}
