import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

/* 

If we want that every time the value of variable changes 
then all the widgets which uses the variable must update itself then the variable must be reactive or observable 
and to make it Reactive (Rx) .obs is used with variable value.
To update the widget which uses Rx variable must be placed inside
Obx()- Your widget which usea Rx) The widget will only update if and only if the Rx variable value changes.

*/
class Obx_state extends StatefulWidget {
  @override
  _Obx_stateState createState() => _Obx_stateState();
}

class _Obx_stateState extends State<Obx_state> {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Obx'),
      ),
      body: Center(
        child: [
          Obx(
            () => count.toString().text.make(),
          ),
          10.heightBox,
          'Increment'
              .text
              .medium
              .white
              .make()
              .box
              .red500
              .rounded
              .p16
              .make()
              .onTap(() {
            increment();
          })
        ].vStack(),
      ),
    );
  }
}
