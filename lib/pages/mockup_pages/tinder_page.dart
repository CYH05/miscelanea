import 'package:flutter/material.dart';

class TinderApp extends StatelessWidget {
  const TinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromRGBO(253, 41, 123, 1),
              Color.fromRGBO(255, 88, 100, 1),
              Color.fromRGBO(255, 101, 91, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 230, bottom: 80),
              child: Image.asset(
                "images/mockup/tinder/tinder_logo.png",
                width: 200,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 11, right: 11, bottom: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text:
                          "By tapping Create Account or Sign In, you agree to our\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Terms",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                            text: ". Learn how we process your data in our "),
                        TextSpan(
                          text: "Privacy\nPolicy ",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: "and "),
                        TextSpan(
                          text: "Cookies Policy.",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.white),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Image.asset(
                              "images/mockup/tinder/apple_logo.png",
                              width: 28,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              "SIGN IN WITH APPLE",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.white),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      height: 40,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.facebook,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              "SIGN IN WITH FACEBOOK",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.white),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "images/mockup/tinder/chat_icon.png",
                              width: 13,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Text(
                              "SIGN IN WITH PHONE NUMBER",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Trouble in Signing In?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
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
}
