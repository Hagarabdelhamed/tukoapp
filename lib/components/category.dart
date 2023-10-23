// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(text!,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
