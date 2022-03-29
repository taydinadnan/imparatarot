import 'package:flutter/material.dart';

import '../public/constants.dart';

Widget DailyPosts() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: postColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
              ),
              height: 130,
              // color: postColor,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Daily Post',
                              style: TextStyle(
                                  fontFamily: 'Macondo',
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. \nFusce at tristique tellus... ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: SizedBox(
                          height: 120,
                          width: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child:
                                  Image.asset("assets/images/dailypost.png")),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 110,
                left: 260,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                  primary: iconColor, // Background color
                ),
                onPressed: () {},
                child: const Text(
                  'View Details',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
