import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/package/launc_manager.dart';
import 'package:flutter_application_1/202/package/loading_Bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin, LauncMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LoadingBar(size: 40),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          LaunchUrl(Uri.parse('https://pub.dev/packages/url_launcher'));
        },
      ),
    );
  }
}
