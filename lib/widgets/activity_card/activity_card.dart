import 'package:flutter/material.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/url_launcher/url_launcher.dart';
import 'package:miscelanea/widgets/texts/body_text_text_style.dart';
import 'package:miscelanea/widgets/texts/description_text_style.dart';
import 'package:miscelanea/widgets/texts/headline_2_text_style.dart';

activityCard({
  required Image imageIcon,
  required String title,
  required int activityCount,
  required String description,
  required String githubUrl,
  required Widget navigateTo,
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      height: 220,
      width: 400,
      decoration: BoxDecoration(
        color: cardBackground,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                        color: iconBackground,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: imageIcon,
                    ),
                  ),
                  Text(
                    title,
                    style: headline2TextStyle(textHighlight),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Exercicios:",
                    style: descriptionTextStyle(textBody),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(
                      activityCount.toString(),
                      style: descriptionTextStyle(textHighlight),
                    ),
                  )
                ],
              )
            ],
          ),
          Text(
            description,
            style: bodyTextStyle(textBody),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("images/github/Icon awesome-github.png"),
                  GestureDetector(
                    onTap: () => launchURL(githubUrl),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        "Acessar código fonte",
                        style: descriptionTextStyle(textHighlight),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => navigateTo)),
                child: Container(
                  width: 119,
                  height: 34.5,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: iconBackground,
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Text(
                    "Ver mais",
                    textAlign: TextAlign.center,
                    style: descriptionTextStyle(textHighlight),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
