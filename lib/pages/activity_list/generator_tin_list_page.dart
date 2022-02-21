import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/pages/valid_tin_generator/view/random_tin_generator_page.dart';
import 'package:miscelanea/widgets/activity_card/exercise_card.dart';
import 'package:miscelanea/widgets/app_bar.dart';

class GenerateTinListPage extends StatefulWidget {
  const GenerateTinListPage({Key? key}) : super(key: key);

  @override
  _GenerateTinListPageState createState() => _GenerateTinListPageState();
}

class _GenerateTinListPageState extends State<GenerateTinListPage> {
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
                title: "Gerador randomico de CPF",
              ),
              createExerciseCard(
                exerciseNumber: 1,
                navigateTo: const RandomTinGenerator(),
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
