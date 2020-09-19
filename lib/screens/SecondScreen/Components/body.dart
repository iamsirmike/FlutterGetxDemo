import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text('Hi, ${Get.arguments}'),
      ),
    );
  }
}
