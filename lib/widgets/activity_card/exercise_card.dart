import 'package:flutter/material.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/widgets/texts/headline_2_text_style.dart';

Widget createExerciseCard({
  required int exerciseNumber,
  required Widget navigateTo,
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: GestureDetector(
      onTap: (() => Navigator.push(
          context, MaterialPageRoute(builder: (context) => navigateTo))),
      child: Container(
        height: 64,
        width: 405,
        padding: const EdgeInsets.only(left: 14, right: 13),
        decoration: BoxDecoration(
          color: cardBackground,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 33.41,
              height: 33,
              decoration: BoxDecoration(
                color: iconBackground,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 14,
                ),
                child: Text(
                  exerciseNumber.toString(),
                  textAlign: TextAlign.center,
                  style: headline2TextStyle(textHighlight),
                ),
              ),
            ),
            Text(
              "Exercicio $exerciseNumber",
              style: headline2TextStyle(textHighlight),
            ),
          ],
        ),
      ),
    ),
  );
}
