import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/widgets/texts/description_text_style.dart';

Widget technologyCar = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Container(
    width: 94,
    height: 100,
    decoration: BoxDecoration(
      color: cardBackground,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "images/Icon simple-flutter.svg",
          width: 38.8,
          height: 48,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.6),
          child: Text(
            "Flutter",
            style: descriptionTextStyle(textHighlight),
          ),
        ),
      ],
    ),
  ),
);
