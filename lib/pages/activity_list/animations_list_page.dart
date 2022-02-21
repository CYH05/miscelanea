import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/pages/animation_pages/controlled/expansion_tile.dart';
import 'package:miscelanea/pages/animation_pages/controlled/floating_button.dart';
import 'package:miscelanea/pages/animation_pages/implicit/expansion_tile.dart';
import 'package:miscelanea/pages/animation_pages/implicit/floating_button.dart';
import 'package:miscelanea/pages/repository_page.dart';
import 'package:miscelanea/widgets/activity_card/exercise_card.dart';
import 'package:miscelanea/widgets/app_bar.dart';

class AnimationListPage extends StatefulWidget {
  const AnimationListPage({Key? key}) : super(key: key);

  @override
  _AnimationListPageState createState() => _AnimationListPageState();
}

class _AnimationListPageState extends State<AnimationListPage> {
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
                title: "Animações",
              ),
              createExerciseCard(
                exerciseNumber: 1,
                navigateTo: const ImplicitFloatingButton(),
                context: context,
              ),
              createExerciseCard(
                exerciseNumber: 2,
                navigateTo: const ImplicitExpansionTile(),
                context: context,
              ),
              createExerciseCard(
                exerciseNumber: 3,
                navigateTo: const ControlledFloatingButton(),
                context: context,
              ),
              createExerciseCard(
                exerciseNumber: 4,
                navigateTo: const ControlledExpansionTile(),
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
