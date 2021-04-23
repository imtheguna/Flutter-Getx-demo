import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class UniqueIDDemo extends StatefulWidget {
  @override
  _UniqueIDDemoState createState() => _UniqueIDDemoState();
}

class _UniqueIDDemoState extends State<UniqueIDDemo> {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'UniqueID',
        ),
      ),
      body: [
        GetBuilder<MyController>(
          id: 'txtCount',
          builder: (controller) {
            return controller.count.toString().text.make();
          },
        ),
        10.heightBox,
        GetBuilder<MyController>(
          builder: (controller) {
            return controller.count.toString().text.make();
          },
        ),
        10.heightBox,
        'Increment'.text.white.make().box.red500.p16.rounded.make().onTap(() {
          myController.increment();
        })
      ].vStack().centered(),
    );
  }
}

class MyController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(['txtCount']);
  }
}
