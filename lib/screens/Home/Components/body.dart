import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/controllers/countcontroller.dart';
import 'package:getxdemo/screens/Home/Components/reusablebutton.dart';
import 'package:getxdemo/screens/SecondScreen/second.dart';

class Body extends StatelessWidget {
  final CountController countController = Get.put(CountController());
  final String name = 'Michael';
  //navigate and pass data to second screen
  goToSecondScreen() {
    Get.to(
      Second(),
      arguments: name,
    );
  }

  //remove first screen from the stack
  // goToSecondScreen() {
  //   Get.off(
  //     Second(),
  //   );
  // }

//increment count
  incrementCount() {
    countController.increment();
  }

//reset count
  resetCount() {
    countController.reset();
  }

//show snackbar
  showsnackbar() {
    Get.snackbar(
      'GetX snackBar',
      'I displayed this using GetX',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
    );
  }

//show dialog
  showDialog() {
    Get.defaultDialog(
        title: 'GetX Dialog',
        content: Text('I showed this Dialog using GetX'),
        backgroundColor: Colors.redAccent);
  }

//show bottomsheet
  showBottomSheet() {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        child: Center(
          child: Text('I showed this using GetX '),
        ),
        height: 500,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              builder: (_) {
                return Text('You have pushed the count button ${_.val}');
              },
            ),
            SizedBox(
              height: 20,
            ),
            ReusableButton(
              onpress: goToSecondScreen,
              text: 'Go to second screen',
            ),
            ReusableButton(
              onpress: showsnackbar,
              text: 'Snackbar',
            ),
            ReusableButton(
              onpress: showDialog,
              text: 'Dialog',
            ),
            ReusableButton(
              onpress: showBottomSheet,
              text: 'Bottom Sheet',
            ),
            ReusableButton(
              onpress: incrementCount,
              text: 'Count',
            ),
             ReusableButton(
              onpress: resetCount,
              text: 'Reset',
            ),
          ],
        ),
      ),
    );
  }
}
