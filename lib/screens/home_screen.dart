import 'package:flutter/material.dart';
import 'package:imparatarot/constants.dart';
import 'package:imparatarot/widgets/appbar_main.dart';
import 'package:imparatarot/widgets/card_buttons.dart';
import 'package:imparatarot/widgets/daily_post.dart';

import '../widgets/background_image.dart';
import '../widgets/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: bgColorPrimary,
            icon: Container(
              color: bgColorPrimary,
              height: 70,
              child: Image.asset("assets/images/logo icondeneme.png"),
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Colors.white,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: bgColorPrimary,
        // onTap: _onItemTapped,
        elevation: 0,
      ),
      backgroundColor: bgColorPrimary,
      appBar: MyAppBar(),
      drawer: Drawer(),
      body: Stack(
        children: [
          header(),
          BackgorundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DailyPosts(),
              DailyPosts(),
              CardButtons(),
            ],
          ),
        ],
      ),
    );
  }
}
