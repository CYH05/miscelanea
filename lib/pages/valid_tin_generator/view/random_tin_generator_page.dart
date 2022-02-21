import "package:flutter/material.dart";
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/pages/valid_tin_generator/controller/random_tin_generator_controller.dart';
import 'package:miscelanea/widgets/texts/headline_2_text_style.dart';

class RandomTinGenerator extends StatefulWidget {
  const RandomTinGenerator({Key? key}) : super(key: key);

  @override
  _RandoTinmGeneratorState createState() => _RandoTinmGeneratorState();
}

class _RandoTinmGeneratorState extends State<RandomTinGenerator> {
  final RandomTinGeneratorController controller =
      RandomTinGeneratorController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerador randomico de CPF válido"),
      ),
      body: Container(
        color: scaffoldBackground,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.generateTin();
                },
                child: const Text("Gerar CPF"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    return Text(
                      controller.tin,
                      style: headline2TextStyle(textHighlight),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
