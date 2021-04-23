import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ShowDialogDemo extends StatefulWidget {
  @override
  _ShowDialogDemoState createState() => _ShowDialogDemoState();
}

class _ShowDialogDemoState extends State<ShowDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'GetX Dialog'.text.make(),
      ),
      body: 'Show Dialog'
          .text
          .medium
          .white
          .make()
          .box
          .p16
          .red500
          .makeCentered()
          .onTap(
        () {
          //Get.defaultDialog();// Default Dialog
          Get.defaultDialog(
            title: 'Title',
            titleStyle: TextStyle(
              fontSize: 25,
            ),
            middleText: 'This is middle text',
            middleTextStyle: TextStyle(
              fontSize: 25,
            ),
            //radius: 80,
            //To customize the middle text
            // content: Row(
            //   children: [
            //     FlatButton(
            //       onPressed: () {},
            //       child: 'Button 1'.text.make(),
            //     ),
            //     FlatButton(
            //       onPressed: () {},
            //       child: 'Button 2'.text.make(),
            //     ),
            //     FlatButton(
            //       onPressed: () {},
            //       child: 'Button 3'.text.make(),
            //     ),
            //   ],
            // ),
            // textCancel: 'Cancel',
            // textConfirm: 'Confirm',
            // confirmTextColor: Vx.red500,
            // onCancel: () {},
            // onConfirm: () {},
            // buttonColor: Colors.red,
            // cancel: Text(
            //   'Cancels',
            // ),
            // confirm: Text(
            //   'Confirm Text',
            // ),
            // actions: [
            //   RaisedButton(
            //     child: Text('Cancel'),
            //     onPressed: () {
            //       Get.back();
            //     },
            //   ),
            //   RaisedButton(
            //     child: Text('Cancel'),
            //     onPressed: () {
            //       Get.back();
            //     },
            //   ),
            //   RaisedButton(
            //     child: Text('Cancel'),
            //     onPressed: () {
            //       Get.back();
            //     },
            //   ),
            // ],
            // barrierDismissible: false,
          );
        },
      ),
    );
  }
}
