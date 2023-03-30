import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData? iconData;
  final VoidCallback? onPress;
  MyButton({required this.iconData, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      onPressed: onPress,
    );
  }
}
