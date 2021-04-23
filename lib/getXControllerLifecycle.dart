import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class GetXControllerLifecycleDemo extends StatefulWidget {
  @override
  _GetXControllerLifecycleDemoState createState() =>
      _GetXControllerLifecycleDemoState();
}

class _GetXControllerLifecycleDemoState
    extends State<GetXControllerLifecycleDemo> {
  @override
  Widget build(BuildContext context) {
    MyController myController = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lifecycle',
        ),
      ),
      body: Center(
        child: [
          GetBuilder<MyController>(
            initState: (data) => myController.increment(),
            dispose: (_) => myController.cleanuptask(),
            builder: (controller) {
              return controller.count.toString().text.make();
            },
          ),
          // 10.heightBox,
          // 'Increment'.text.white.make().box.red500.p16.rounded.make().onTap(
          //   () {
          //     Get.find<MyController>().increment();
          //   },
          // ),
        ].vStack(),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0;
  Future<void> increment() async {
    await Future<int>.delayed(5.seconds);
    count++;
    update();
  }

  void cleanuptask() {
    print('clean');
  }

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   increment();
  // }

  // @override
  // void onClose() {
  //   // TODO: implement onClose
  //   super.onClose();
  // }
}
