import 'package:flutter/material.dart';
import 'package:miscelanea/const/colors.dart';
import 'package:miscelanea/url_launcher/url_launcher.dart';
import 'package:miscelanea/widgets/app_bar.dart';
import 'package:miscelanea/widgets/about_dev/level_bar.dart';
import 'package:miscelanea/widgets/technology_card/technology_card.dart';
import 'package:miscelanea/widgets/texts/body_text_text_style.dart';
import 'package:miscelanea/widgets/texts/description_text_style.dart';
import 'package:miscelanea/widgets/texts/headline_2_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutDevPage extends StatefulWidget {
  const AboutDevPage({Key? key}) : super(key: key);

  @override
  _AboutDevPageState createState() => _AboutDevPageState();
}

class _AboutDevPageState extends State<AboutDevPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(14, 42, 14, 0),
        color: scaffoldBackground,
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(
                logoIcon: Image.asset("images/logo/logo.png"),
                title: "Sobre o dev",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  color: cardBackground,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 13),
                        child: Container(
                          width: 116,
                          height: 116,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      Text(
                        "Claudio Yoshio Hanada",
                        style: headline2TextStyle(textHighlight),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(23, 13, 23, 45),
                        child: Text(
                          "Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.",
                          textAlign: TextAlign.center,
                          style: descriptionTextStyle(textBody),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 27.34),
                              child: SvgPicture.asset(
                                "images/contacts/Icon ionic-logo-whatsapp.svg",
                                width: 12.04,
                                height: 22.48,
                              ),
                            ),
                            GestureDetector(
                              onTap: () =>
                                  launchURL("https://github.com/CYH05"),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 27.34),
                                child: SvgPicture.asset(
                                  "images/contacts/Icon awesome-github-alt.svg",
                                  width: 12.04,
                                  height: 22.48,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 27.34),
                              child: SvgPicture.asset(
                                "images/contacts/Icon awesome-instagram.svg",
                                width: 12.04,
                                height: 22.48,
                              ),
                            ),
                            SvgPicture.asset(
                              "images/contacts/Icon awesome-facebook-f.svg",
                              width: 12.04,
                              height: 22.48,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Tecnologias favoritas",
                    style: bodyTextStyle(textHighlight),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      technologyCar,
                      technologyCar,
                      technologyCar,
                      technologyCar,
                      technologyCar,
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Habilidades e competências",
                    style: bodyTextStyle(textHighlight),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 50),
                child: Container(
                  width: 401,
                  height: 181,
                  decoration: BoxDecoration(
                    color: cardBackground,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 17, 15, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dart/Flutter",
                              style: descriptionTextStyle(textHighlight),
                            ),
                            levelBar(194),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 15, bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "React",
                              style: descriptionTextStyle(textHighlight),
                            ),
                            levelBar(125),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 15, bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Javascript",
                              style: descriptionTextStyle(textHighlight),
                            ),
                            levelBar(175),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 15, bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "HTML",
                              style: descriptionTextStyle(textHighlight),
                            ),
                            levelBar(235),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 14, right: 15, bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "CSS",
                              style: descriptionTextStyle(textHighlight),
                            ),
                            levelBar(199),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
