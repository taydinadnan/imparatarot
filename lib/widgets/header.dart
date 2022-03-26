import 'package:flutter/material.dart';

import '../constants.dart';

Widget header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 250,
        child: Image.asset(
          'assets/images/v933-audi-44-a.png',
          color: headerColor,
        ),
      ),
    ],
  );
}
