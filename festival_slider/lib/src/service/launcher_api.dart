import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
