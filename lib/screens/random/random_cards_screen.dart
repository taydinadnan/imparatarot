import 'package:flip_card/flip_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:imparatarot/public/constants.dart';
import 'package:imparatarot/widgets/background_image.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import '../../data/tarot_json.dart';
import '../../routes/app_pages.dart';

class RandomCardsScreen extends StatefulWidget {
  const RandomCardsScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RandomCardsScreenState();
}

class _RandomCardsScreenState extends State<RandomCardsScreen> {
  GlobalKey<FlipCardState> cardKey1 = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> cardKey2 = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> cardKey3 = GlobalKey<FlipCardState>();
  GlobalKey<FlipCardState> cardKey4 = GlobalKey<FlipCardState>();

  DateFormat format = DateFormat('dd/MM');
  List<bool> flips = [false, false, false, false];
  List tarots = [];
  List unLockCard = [];

  @override
  void initState() {
    super.initState();
    tarots.addAll(tarotData);
    unLockCard.addAll(tarotData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorPrimary,
      appBar: AppBar(
        backgroundColor: bgColorPrimary,
        elevation: 0,
      ),
      body: Stack(
        children: [
          BackgorundImage(),
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 12.0),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildTarotCard(cardKey1, 0, 'Overview'.trArgs()),
                          const SizedBox(width: 16.0),
                          _buildTarotCard(cardKey2, 1, 'Work'.trArgs()),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildTarotCard(cardKey3, 2, 'Love'.trArgs()),
                          const SizedBox(width: 16.0),
                          _buildTarotCard(cardKey4, 3, 'Finance'.trArgs()),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      flips.contains(false)
                          ? Container()
                          : NeumorphicButton(
                              onPressed: () => Get.toNamed(Routes.details,
                                  arguments: unLockCard.sublist(0, 4)),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 48.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Result'.trArgs(),
                                    style: TextStyle(
                                      color: colorPrimary,
                                      fontFamily: 'Lato',
                                      fontSize: width / 24.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(width: 12.0),
                                  Icon(
                                    Icons.arrow_right,
                                    size: width / 24.0,
                                    color: colorPrimary,
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(width / 32.0),
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.convex,
                                boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12.0),
                                ),
                                depth: 15.0,
                                intensity: .15,
                                color: Colors.black.withOpacity(.75),
                              ),
                              duration: const Duration(milliseconds: 200),
                            )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTarotCard(key, number, title) {
    return Column(
      children: [
        FlipCard(
          key: key,
          flipOnTouch: false,
          front: GestureDetector(
            onTap: () {
              tarots.shuffle();
              key.currentState.toggleCard();
              setState(() {
                flips[number] = true;
              });
              unLockCard[number] = tarots[0];
              tarots.removeAt(0);
            },
            child: Container(
              height: height * .32,
              width: width * .4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: bgColorPrimary,
              ),
              child: Image.asset("assets/images/78876.1.png"),
            ),
          ),
          back: GestureDetector(
            onTap: () {},
            child: Container(
              height: height * .32,
              width: width * .4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: bgColorPrimary,
                image: DecorationImage(
                  image: AssetImage(unLockCard.length < number + 1
                      ? 'cards/${tarots[number]['img']}'
                      : 'cards/${unLockCard[number]['img']}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        Text(
          flips[number] == true ? unLockCard[number]['name'] : title,
          style: TextStyle(
            fontSize: width / 24.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Lato',
            letterSpacing: 1.5,
            wordSpacing: 1.5,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
