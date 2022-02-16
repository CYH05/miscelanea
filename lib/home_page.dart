import 'package:flutter/material.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/pages/about_dev_page.dart';
import 'package:miscelanea/pages/activity_page.dart';
import 'package:miscelanea/pages/repository_page.dart';
import 'package:miscelanea/widgets/bottom_navigation_bar_itens.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final pages = [
    const ActivityPage(),
    const RepositoryPage(),
    const AboutDevPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: bottomNavigationBarItens,
        backgroundColor: scaffoldBackground,
        selectedItemColor: textHighlight,
        unselectedItemColor: textHighlight,
        unselectedFontSize: 12,
        selectedFontSize: 12,
      ),
    );
  }
}
