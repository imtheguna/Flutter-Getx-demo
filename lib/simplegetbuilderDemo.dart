import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SimpleGetBuilderDemo extends StatefulWidget {
  @override
  _GetBuilderDemoState createState() => _GetBuilderDemoState();
}

class _GetBuilderDemoState extends State<SimpleGetBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Get Builder',
          ),
        ),
        body: Center(
          child: [
            GetBuilder<MyController>(
              init: MyController(),
              builder: (controller) {
                return controller.count.toString().text.make();
              },
            ),
            10.heightBox,
            'Increment'
                .text
                .white
                .make()
                .box
                .red500
                .p16
                .rounded
                .make()
                .onTap(() {
              Get.find<MyController>().increment();
            }),
          ].vStack(),
        ));
  }
}

class MyController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}
