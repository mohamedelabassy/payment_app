import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:payment_app/features/checkout/presentation/widget/app_bar_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/bottom_sheet/payment_methods_bottom_sheet.dart';
import 'package:payment_app/features/checkout/presentation/widget/custom_button_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/order_info_item_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/total_price_widget.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Gap(15),
            Expanded(
              child: Image.asset(
                "assets/images/cartImage.png",
              ),
            ),
            const Gap(25),
            const OrderInfoItemWidget(
              title: 'Order Subtotal',
              value: r'$42.97',
            ),
            const Gap(10),
            const OrderInfoItemWidget(
              title: 'Discount',
              value: r'$0',
            ),
            const Gap(10),
            const OrderInfoItemWidget(
              title: 'Shipping ',
              value: r'$0',
            ),
            const Gap(10),
            const Divider(
              thickness: 1.5,
            ),
            const Gap(10),
            const TotalPriceWidget(
              title: 'Total',
              value: r'$42.97',
            ),
            const Gap(10),
            CustomButtonWidget(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return const PaymentDetailsScreen();
                // }));
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(16)),
                    context: context,
                    builder: (context) {
                      return const PaymentMethodsBottomSheet();
                    });
              },
              text: "Complete Payment",
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
