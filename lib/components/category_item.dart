import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    this.text,
    this.color,
    this.onTap,
  });

  String? text;
  Color? color;
  Function()? onTap;
  // VoidCallback? onTap; // VoidCallback? == Function()?

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(
          left: 24.0,
        ),
        width: double.infinity,
        height: 65.0,
        color: color,
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
