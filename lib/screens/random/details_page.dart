import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imparatarot/public/constants.dart';
import 'package:imparatarot/screens/home_screen.dart';

import '../../widgets/background_image.dart';

class DetailsPage extends StatefulWidget {
  final results;
  const DetailsPage({Key? key, this.results}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorPrimary,
      appBar: AppBar(
        backgroundColor: bgColorPrimary,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Result'.trArgs(),
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lato',
            fontSize: width / 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      body: Stack(
        children: [
          BackgorundImage(),
          Container(
            height: height,
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: postColor.withOpacity(0.3),
                                offset: const Offset(-1.0, 40.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                _buildTitle(
                                    'Overview'.trArgs(),
                                    widget.results[0]['name'],
                                    widget.results[0]['img']),
                                const SizedBox(height: 5.0),
                                _buildContent(
                                    widget.results[0]['meanings']['light']),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: postColor.withOpacity(0.3),
                                offset: const Offset(-1.0, 40.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                _buildTitle(
                                    'Overview'.trArgs(),
                                    widget.results[1]['name'],
                                    widget.results[1]['img']),
                                const SizedBox(height: 5.0),
                                _buildContent(
                                    widget.results[1]['meanings']['light']),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: postColor.withOpacity(0.3),
                                offset: const Offset(-1.0, 40.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                _buildTitle(
                                    'Overview'.trArgs(),
                                    widget.results[2]['name'],
                                    widget.results[2]['img']),
                                const SizedBox(height: 5.0),
                                _buildContent(
                                    widget.results[2]['meanings']['light']),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: postColor.withOpacity(0.3),
                                offset: const Offset(-1.0, 40.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                _buildTitle(
                                    'Overview'.trArgs(),
                                    widget.results[3]['name'],
                                    widget.results[3]['img']),
                                const SizedBox(height: 5.0),
                                _buildContent(
                                    widget.results[3]['meanings']['light']),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(title, value, img) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title + ':\t\t\n',
                style: TextStyle(
                  color: colorPrimary,
                  fontFamily: 'Lato',
                  fontSize: width / 22.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: value,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lato',
                  fontSize: width / 23.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 160,
              width: 95,
              child: Image.asset(
                'cards/' + img,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContent(List content) {
    return Text(
      '-' + content.join('\n\n-'),
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Lato',
        fontSize: width / 25.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
