import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/screen/thank_you_screen.dart';
import 'package:payment_app/features/checkout/presentation/widget/custom_button_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/custom_credit_card_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/list_payment_methods_widget.dart';

class PaymentDetailsScreenBody extends StatefulWidget {
  const PaymentDetailsScreenBody({super.key});

  @override
  State<PaymentDetailsScreenBody> createState() =>
      _PaymentDetailsScreenBodyState();
}

class _PaymentDetailsScreenBodyState extends State<PaymentDetailsScreenBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: ListPaymentMethodsWidget(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCardWidget(
            formKey: formKey,
            autoValidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 12,
                right: 16,
                left: 16,
              ),
              child: CustomButtonWidget(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log("payment");
                  } else {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ThankViewScreen();
                    }));
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'payment',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
