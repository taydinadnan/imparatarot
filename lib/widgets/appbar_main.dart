import 'package:flutter/material.dart';
import 'package:imparatarot/public/constants.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  final PreferredSizeWidget? bottom;
  final String? sellerUID;
  MyAppBar({this.bottom, this.sellerUID});

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => bottom == null
      ? Size(56, AppBar().preferredSize.height)
      : Size(56, 80 + AppBar().preferredSize.height);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColorPrimary,
      iconTheme: const IconThemeData(color: iconColor),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
              ),
            ),
            Positioned(
              child: Stack(
                children: const [
                  Icon(
                    Icons.brightness_1,
                    size: 20,
                    color: Colors.red,
                  ),
                  Positioned(
                    top: 2,
                    right: 5,
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
      elevation: 0,
    );
  }
}
