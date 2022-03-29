import 'package:flutter/material.dart';

import '../constants.dart';

Widget header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Opacity(
        opacity: 0.8,
        child: SizedBox(
          width: 250,
          child: Image.asset(
            'assets/images/header2pt.png',
            color: iconColor,
          ),
        ),
      ),
    ],
  );
}
