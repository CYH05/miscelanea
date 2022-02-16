import 'package:flutter/material.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/widgets/texts/description_text_style.dart';
import 'package:miscelanea/widgets/texts/headline_1_text_style.dart';

Widget appBar({
  required Widget logoIcon,
  required String title,
}) {
  bool _isImage = false;
  if (logoIcon == Image) {
    _isImage = true;
  }
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          logoIcon,
          Padding(
            padding: EdgeInsets.only(left: _isImage ? 4 : 19.25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: headline1Style(textHighlight),
                ),
                Text(
                  'Flutterando Masterclass',
                  style: descriptionTextStyle(textHighlight),
                ),
              ],
            ),
          ),
        ],
      ),
      GestureDetector(
        onTap: () {},
        child: Image.asset("images/moon/Icon awesome-moon.png"),
      )
    ],
  );
}
