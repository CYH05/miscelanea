import 'package:flutter/material.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/const/font.dart';
import 'package:miscelanea/pages/about_dev_page.dart';
import 'package:miscelanea/pages/activity_page.dart';
import 'package:miscelanea/pages/repository_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _index = 0;
  Alignment _alignmentAnimation = Alignment.bottomLeft;

  final pages = [
    const ActivityPage(),
    const RepositoryPage(),
    const AboutDevPage()
  ];

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _width = _size.width;
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomAppBar(
        color: scaffoldBackground,
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          height: 60,
          child: Stack(
            children: [
              SizedBox(
                width: _width,
                child: AnimatedAlign(
                  alignment: _alignmentAnimation,
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, bottom: 20),
                    child: Container(
                      width: 59,
                      height: 32,
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: cardBackground,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 0;
                        _alignmentAnimation = Alignment.bottomLeft;
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "images/feather_target/Icon feather-target.png",
                          width: 24,
                          height: 24,
                        ),
                        const Text(
                          "Atividades",
                          style: TextStyle(
                            color: textHighlight,
                            fontSize: 11,
                            fontFamily: fontPoppins,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: textBody,
                          width: 1,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 1;
                        _alignmentAnimation = Alignment.bottomCenter;
                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          "images/github/Icon awesome-github.png",
                          height: 24,
                          width: 24,
                        ),
                        const Text(
                          "Repositório",
                          style: TextStyle(
                            color: textHighlight,
                            fontSize: 11,
                            fontFamily: fontPoppins,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          color: textBody,
                          width: 1,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 2;
                        _alignmentAnimation = Alignment.bottomRight;
                      });
                    },
                    child: Column(
                      children: const [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 24,
                        ),
                        Text(
                          "Sobre o Dev",
                          style: TextStyle(
                            color: textHighlight,
                            fontSize: 11,
                            fontFamily: fontPoppins,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
