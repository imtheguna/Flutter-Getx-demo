import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'Bottom Sheet'.text.make(),
      ),
      body: 'Show Bottom Sheet'
          .text
          .medium
          .white
          .make()
          .box
          .p16
          .red500
          .makeCentered()
          .onTap(() {
        Get.bottomSheet(
          [
            15.heightBox,
            'Light Theme'
                .text
                .white
                .medium
                .make()
                .box
                .orange300
                .p16
                .rounded
                .make()
                .onTap(() {
              Get.changeTheme(
                ThemeData.light(),
              );
            }),
            15.heightBox,
            'Dark Theme'
                .text
                .white
                .medium
                .make()
                .box
                .orange300
                .p16
                .rounded
                .make()
                .onTap(() {
              Get.changeTheme(
                ThemeData.dark(),
              );
            }),
            15.heightBox,
          ].vStack(),
          //barrierColor: Colors.green,
          backgroundColor: Vx.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enableDrag: false,
        );
      }),
    );
  }
}
