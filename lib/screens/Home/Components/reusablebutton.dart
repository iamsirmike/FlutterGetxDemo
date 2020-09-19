
import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Function onpress;
  final String text;
  const ReusableButton({
    this.onpress,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onpress,
      child: Text(text),
    );
  }
}