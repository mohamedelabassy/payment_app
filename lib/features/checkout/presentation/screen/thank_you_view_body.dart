import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widget/custom_check_icon_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/custom_dashed_line.dart';
import 'package:payment_app/features/checkout/presentation/widget/thank_you_card_widget.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCardWidget(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 0,
            right: 0,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomDashedLine(),
            ),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            right: 0,
            left: 0,
            top: -50,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}
