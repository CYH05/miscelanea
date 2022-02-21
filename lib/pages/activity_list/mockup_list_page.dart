import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/pages/mockup_pages/financial_page.dart';
import 'package:miscelanea/pages/mockup_pages/tinder_page.dart';
import 'package:miscelanea/widgets/activity_card/exercise_card.dart';
import 'package:miscelanea/widgets/app_bar.dart';

class MockupListPage extends StatefulWidget {
  const MockupListPage({Key? key}) : super(key: key);

  @override
  _MockupListPageState createState() => _MockupListPageState();
}

class _MockupListPageState extends State<MockupListPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _height = _size.height;
    double _width = _size.width;
    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        color: scaffoldBackground,
        padding: const EdgeInsets.fromLTRB(14, 42, 14, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(
                logoIcon: GestureDetector(
                  onTap: (() => Navigator.pop(context)),
                  child: SvgPicture.asset(
                    "images/arrow/Icon ionic-ios-arrow-back.svg",
                  ),
                ),
                title: "Leitura de mockup",
              ),
              createExerciseCard(
                exerciseNumber: 1,
                navigateTo: const TinderApp(),
                context: context,
              ),
              createExerciseCard(
                exerciseNumber: 2,
                navigateTo: const PageFinancialApp(),
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
