import 'package:flutter/material.dart';
import 'package:getxdemo/screens/Home/Components/body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body: Body(),
    );
  }
}
