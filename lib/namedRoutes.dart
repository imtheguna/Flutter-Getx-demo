import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart ';

class NamedRoutes extends StatefulWidget {
  @override
  _NamedRoutesState createState() => _NamedRoutesState();
}

class _NamedRoutesState extends State<NamedRoutes> {
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
          Get.toNamed('/page_1');
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
          Get.toNamed(
            '/page_1_fullscreenDialog',
          );
        }),
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
            Get.offNamed(
              'page_1',
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
            Get.toNamed('/page_2?hi=Hi Hello');
          },
        ),
        10.heightBox,
        'unKnownRoute'.text.white.make().box.p16.purple500.rounded.make().onTap(
          () {
            Get.toNamed('/gh');
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
              Get.parameters['hi'],
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

class Page_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Not Found',
        ),
      ),
    );
  }
}
