import 'package:flutter/material.dart';

class Style {
  static TextStyle get style {
    return const TextStyle(fontSize: 70, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold);
  }

  static BoxDecoration get getDecoration {
    return BoxDecoration(
        // color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
            color: Colors.redAccent, width: 1, style: BorderStyle.solid));
  }
}
