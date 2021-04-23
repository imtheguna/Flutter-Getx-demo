import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Controllertype extends StatefulWidget {
  @override
  _ControllertypeState createState() => _ControllertypeState();
}

class _ControllertypeState extends State<Controllertype> {
  //if init property is not used in GetX<Type of Controller> then
  //create the instance of controller as follows.
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Controller Type',
        ),
      ),
      body: Center(
        child: [
          GetX<MyController>(
            //init: MyController(),
            builder: (controller) {
              return controller.count.toString().text.make();
            },
          ),
          10.heightBox,
          'Increment'.text.white.make().box.red500.p16.rounded.make().onTap(
            () {
              Get.find<MyController>().increment();
            },
          ),
        ].vStack(),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
