import 'package:flutter/material.dart';

Widget backgorundImage() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Opacity(
      opacity: 0.08,
      child: Image.asset(
        'assets/images/78876.png',
      ),
    ),
  );
}
