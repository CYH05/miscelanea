import 'package:flutter/material.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/pages/animations_list_page.dart';
import 'package:miscelanea/pages/mockup_list_page.dart';
import 'package:miscelanea/widgets/activity_card/activity_card.dart';
import 'package:miscelanea/widgets/app_bar.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _height = _size.height;
    double _width = _size.width;
    return Container(
      width: _width,
      height: _height,
      color: scaffoldBackground,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 42, 14, 15),
          child: Column(
            children: [
              appBar(
                  logoIcon: Image.asset("images/logo/logo.png"),
                  title: "Atividades"),
              activityCard(
                imageIcon:
                    Image.asset("images/runner/Icon awesome-running.png"),
                title: "Animações",
                activityCount: 4,
                githubUrl: "https://github.com/CYH05/animations",
                description:
                    "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
                navigateTo: const AnimationListPage(),
                context: context,
              ),
              activityCard(
                imageIcon:
                    Image.asset("images/glasses/Icon awesome-glasses.png"),
                title: "Leitura de mockup",
                activityCount: 2,
                githubUrl: "https://github.com/CYH05/front_copy",
                description:
                    "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
                navigateTo: const MockupListPage(),
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
