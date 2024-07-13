import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: const Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title ?? "",
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
