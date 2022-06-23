import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/text_widget.dart';
import 'package:flutter_application_1/303/call_back_learn.dart';

import '101/button_learn.dart';
import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/container_sized_box_leand.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/image_learn.dart';
import '101/incator_learn.dart';
import '101/list_tile_learn.dart';
import '101/list_view_builder.dart';
import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/row_learn.dart';
import '101/scaffold+learn.dart';
import '101/stateful_learn.dart';
import '101/stateful_life_cycle_learn.dart';
import '101/stateless_learn.dart';
import '101/text_field_learn.dart';
import '202/cache/shared_learn_cache.dart';
import '202/model_learn_view.dart';
import '202/service/package_learn.dart';
import '202/service/service_learn_view.dart';
import '202/service/service_post_learn_view.dart';
import '202/tab_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle.dart';
import 'demos/hali_saha.dart';
import 'demos/hali_saha_v2.dart';
import 'demos/my_collections_demos.dart';
import 'demos/note_demos_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        ),
      ),
      home: PackageLearnView(),
    );
  }
}
