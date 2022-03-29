import 'package:flutter/material.dart';

Widget CardButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      GestureDetector(
        onTap: () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset("assets/images/78882.png"),
            ),
            const Text(
              "Fortune \n  Teller",
              style: TextStyle(
                  fontFamily: 'Macondo',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),
            )
          ],
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset("assets/images/78882.2.png"),
            ),
            const Text(
              " Random",
              style: TextStyle(
                  fontFamily: 'Macondo',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),
            )
          ],
        ),
      )
    ],
  );
}
