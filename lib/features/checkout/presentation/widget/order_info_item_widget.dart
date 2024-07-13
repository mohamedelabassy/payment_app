import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class OrderInfoItemWidget extends StatelessWidget {
  final String title;
  final String value;
  const OrderInfoItemWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: Styles.style18,
        )
      ],
    );
  }
}
