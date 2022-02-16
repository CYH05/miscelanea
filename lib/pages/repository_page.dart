import 'package:flutter/material.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/widgets/app_bar.dart';

class RepositoryPage extends StatefulWidget {
  const RepositoryPage({Key? key}) : super(key: key);

  @override
  _RepositoryPageState createState() => _RepositoryPageState();
}

class _RepositoryPageState extends State<RepositoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(14, 42, 14, 124),
        color: scaffoldBackground,
        child: Column(
          children: [
            appBar(
              logoIcon: Image.asset("images/logo/logo.png"),
              title: "Repositório",
            ),
          ],
        ),
      ),
    );
  }
}
