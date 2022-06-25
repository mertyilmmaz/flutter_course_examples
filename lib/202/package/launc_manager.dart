import 'package:url_launcher/url_launcher.dart';

mixin LauncMixin {
  void LaunchUrl(Uri url) async {
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }
}
