import 'package:url_launcher/url_launcher.dart';

launchURL(String urlPath) async {
  if (await canLaunch(urlPath)) {
    await launch(urlPath);
  } else {
    throw 'Could not launch $urlPath';
  }
}
