import 'package:flutter/material.dart';
import 'package:imparatarot/constants.dart';
import 'package:imparatarot/widgets/appbar_main.dart';

import '../widgets/background_image.dart';
import '../widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorPrimary,
      appBar: MyAppBar(),
      drawer: Drawer(),
      body: Stack(
        children: [
          header(),
          BackgorundImage(),
        ],
      ),
    );
  }
}
