import 'package:flutter/material.dart';
import 'package:heart/constant.dart';

class BottomButtom extends StatelessWidget {
  final String? title;
  final VoidCallback? onTop;

  BottomButtom({@required this.title, @required this.onTop});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        child: Center(
          child: Text(
            title!,
            style: kLargButtonTextStyle,
          ),
        ),
        color: kBottomCardColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainer,
      ),
    );
  }
}
