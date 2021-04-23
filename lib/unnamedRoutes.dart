import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class UnNamedRoutes extends StatefulWidget {
  @override
  _UnNamedRoutesState createState() => _UnNamedRoutesState();
}

class _UnNamedRoutesState extends State<UnNamedRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'UnnamedRoutes'.text.make(),
      ),
      body: [
        'Go To Page 1'
            .text
            .white
            .make()
            .box
            .p16
            .red500
            .rounded
            .make()
            .onTap(() {
          Get.to(Page_1());
        }),
        10.heightBox,
        'Go To Page 1 (Full Screen Dialog)'
            .text
            .white
            .make()
            .box
            .p16
            .blue500
            .rounded
            .make()
            .onTap(() {
          Get.to(
            Page_1(),
            fullscreenDialog: true,
          );
        }),
        10.heightBox,
        'Go To Page 1 (Transition ZOOM)'
            .text
            .white
            .make()
            .box
            .p16
            .green500
            .rounded
            .make()
            .onTap(
          () {
            Get.to(
              Page_1(),
              transition: Transition.zoom,
              duration: 1.seconds,
              curve: Curves.bounceIn,
            );
          },
        ),
        10.heightBox,
        'Go To Page 1 (No option to return)'
            .text
            .white
            .make()
            .box
            .p16
            .yellow500
            .rounded
            .make()
            .onTap(
          () {
            Get.off(
              Page_1(),
            );
            //Cancel all previous screens/routes
            //Get/offAll(page_1());
          },
        ),
        10.heightBox,
        'Go To Page 2 (Pass some data)'
            .text
            .white
            .make()
            .box
            .p16
            .pink500
            .rounded
            .make()
            .onTap(
          () {
            Get.to(
              Page_2(),
              arguments: 'Hi Page - 2',
            );
          },
        ),
        10.heightBox,
        'Go To Page 2 (Receive data from page 2)'
            .text
            .white
            .make()
            .box
            .p16
            .purple500
            .rounded
            .make()
            .onTap(
          () async {
            var data = await Get.to(
              Page_2(),
              arguments: 'Hi Page - 2',
            );
            print(data);
          },
        ),
      ]
          .vStack(
            crossAlignment: CrossAxisAlignment.center,
            alignment: MainAxisAlignment.center,
          )
          .centered(),
    );
  }
}

class Page_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page-1',
        ),
      ),
    );
  }
}

class Page_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page-2',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.arguments,
            ),
            25.heightBox,
            'Go Back and send data (Hi Hello)'
                .text
                .white
                .make()
                .box
                .p16
                .purple500
                .rounded
                .make()
                .onTap(
              () {
                Get.back(
                  result: 'Hi Hello',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
