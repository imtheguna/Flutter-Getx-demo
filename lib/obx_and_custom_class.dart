import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class Obxx_custom_class extends StatefulWidget {
  @override
  _Obxx_custom_classState createState() => _Obxx_custom_classState();
}

class _Obxx_custom_classState extends State<Obxx_custom_class> {
  //var user = User();
  //or
  var user = User(data: 'Guna', count: 5).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('obx user class'),
      ),
      body: Center(
        child: [
          Obx(
            () => user.value.data.toString().text.make(),
          ),
          10.heightBox,
          'Upper'.text.white.make().box.red500.p16.rounded.make().onTap(() {
            //user.data.value = user.data.value.toUpperCase();
            //or
            user.update((user) {
              user.data = user.data.toString().toUpperCase();
            });
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
