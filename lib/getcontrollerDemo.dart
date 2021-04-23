import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class GetControllerDemo extends StatefulWidget {
  @override
  _GetControllerDemoState createState() => _GetControllerDemoState();
}

class _GetControllerDemoState extends State<GetControllerDemo> {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Controller',
        ),
      ),
      body: Center(
        child: [
          //Obx(() => myController.user.data.toString().text.make()),
          //or
          Obx(() => myController.user.value.data.toString().text.make()),
          10.heightBox,
          'Upper'.text.white.make().box.red500.p16.rounded.make().onTap(() {
            myController.convertToupper();
          })
        ].vStack(),
      ),
    );
  }
}

class User {
  // var count = 0.obs;
  // var data = 'Guna'.obs;

//or

  var data;
  var count;
  User({this.data, this.count});
}

class MyController extends GetxController {
  // var user = User();
  // void convertToupper() {
  //   user.data.value = user.data.value.toUpperCase();
  // }
  //or

  var user = User(data: 'Guna', count: 5).obs;
  void convertToupper() {
    user.update((user) {
      user.data = user.data.toString().toUpperCase();
    });
  }
}
