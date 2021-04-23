import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllerType.dart';
import 'package:getx_demo/getXControllerLifecycle.dart';
import 'package:getx_demo/simplegetbuilderDemo.dart';
import 'package:getx_demo/getcontrollerDemo.dart';
import 'package:getx_demo/namedRoutes.dart';
import 'package:getx_demo/obx-state-management.dart';
import 'package:getx_demo/obx_and_custom_class.dart';
import 'package:getx_demo/uniqueId.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      initialRoute: '/',
      // home: UnNamedRoutes(),
      unknownRoute: GetPage(name: '/no_page', page: () => Page_3()),
      getPages: [
        GetPage(name: '/', page: () => UniqueIDDemo()),
        GetPage(name: '/page_1', page: () => Page_1()),
        GetPage(
          name: '/page_1_fullscreenDialog',
          page: () => Page_1(),
          fullscreenDialog: true,
        ),
        GetPage(
          name: '/page_2',
          page: () => Page_2(),
          transition: Transition.leftToRight,
        )
      ],
    );
  }
}
