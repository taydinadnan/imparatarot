import 'package:flutter/material.dart';
import 'package:imparatarot/public/constants.dart';
import 'package:imparatarot/screens/random/random_cards_screen.dart';
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
  final int _selectedIndex = 0;

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
      drawer: const Drawer(),
      body: Stack(
        children: [
          BackgorundImage(),
          Column(
            children: [
              header(),
              const SizedBox(height: 50),
              DailyPosts(),
              // DailyPosts(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: CardButtons(),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RandomCardsScreen()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
