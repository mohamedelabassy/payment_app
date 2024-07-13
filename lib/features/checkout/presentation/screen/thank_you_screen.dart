import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/screen/thank_you_view_body.dart';
import 'package:payment_app/features/checkout/presentation/widget/app_bar_widget.dart';

class ThankViewScreen extends StatelessWidget {
  const ThankViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
        offset: const Offset(0, -16),
        child: const ThankYouViewBody(),
      ),
    );
  }
}
