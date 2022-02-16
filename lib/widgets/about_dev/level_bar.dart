import "package:flutter/material.dart";
import 'package:miscelanea/const/colors.dart';

Widget levelBar(double level) {
  return Stack(
    children: [
      Container(
        height: 9,
        width: 255,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(13, 14, 15, 1),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      Container(
        height: 9,
        width: level,
        decoration: BoxDecoration(
          color: iconBackground,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ],
  );
}
