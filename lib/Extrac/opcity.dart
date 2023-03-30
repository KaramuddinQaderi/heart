import 'package:flutter/material.dart';

import '../constant.dart';

class OpcityCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final VoidCallback? onPress;
  OpcityCard({this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? kActiveCardColor,
        ),
      ),
    );
  }
}
