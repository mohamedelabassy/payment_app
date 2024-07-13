import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentation/widget/card_info_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/payment_item_info_widget.dart';
import 'package:payment_app/features/checkout/presentation/widget/total_price_widget.dart';

class ThankYouCardWidget extends StatelessWidget {
  const ThankYouCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              "Thank you! ",
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              "Your transaction was successful!",
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(height: 40),
            const PaymentItemInfoWidget(
              title: 'Date',
              value: '1/24/2023',
            ),
            const SizedBox(height: 20),
            const PaymentItemInfoWidget(
              title: 'time',
              value: '10:15:01 AM',
            ),
            const SizedBox(height: 20),
            const PaymentItemInfoWidget(
              title: 'to',
              value: 'Sam Louis',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPriceWidget(
              title: "Total",
              value: r'$42.97',
            ),
            const SizedBox(height: 30),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1.50,
                          color: Color(0xff34a853),
                        ),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child:
                      const Center(child: Text("Paid", style: Styles.style24)),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.of(context).size.height * .2 + 20) / 2) - 29,
            )
          ],
        ),
      ),
    );
  }
}
