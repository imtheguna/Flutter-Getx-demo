import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body:
          "Show SnackBar".text.white.make().box.p16.red500.makeCentered().onTap(
        () {
          Get.snackbar(
            'Title', // title of the SnackBar
            'message',
            snackPosition: SnackPosition.BOTTOM,

            // titleText: 'Another Title'.text.medium.make(),
            // messageText: 'Another Message'.text.make(),
            //colorText: Vx.red500,
            //backgroundColor: Vx.blue500,
            //borderColor: Vx.green500,
            // borderRadius: 30,
            // maxWidth: 100,
            //animationDuration: 2.seconds,
            //backgroundGradient: LinearGradient(
            //colors: [
            //  Vx.blue800,
            ///  Vx.red500,
            //],
            //),
            // borderColor: Vx.purple500,
            // borderWidth: 4,
            // boxShadows: [
            //   BoxShadow(
            //     color: Colors.amber,
            //     offset: Offset(30, 50),
            //     blurRadius: 5,
            //   ),
            // ],
            // dismissDirection: SnackDismissDirection.HORIZONTAL,
            // forwardAnimationCurve: Curves.bounceInOut,
            // duration: 8000.milliseconds,
            // icon: Icon(Icons.send),
            // shouldIconPulse: false,
            // leftBarIndicatorColor: Vx.red500,
            // mainButton: FlatButton(
            //   onPressed: () {},
            //   child: 'Hi'.text.make(),
            // ),
            // onTap: (val) {
            //   print(val);
            // },
            //userInputForm: Form(child: TextField())
            // padding: EdgeInsets.all(15),
            // snackbarStatus: (val) {
            //   print(val);
            // },
            //showProgressIndicator: true,
            // progressIndicatorBackgroundColor: Vx.orange300,
            //reverseAnimationCurve: Curves.ease,
            //overlayBlur: 5,
            //overlayColor: Vx.black,
          );
        },
      ),
    );
  }
}
