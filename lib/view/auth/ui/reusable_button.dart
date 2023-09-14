



import 'package:flutter/material.dart';
import 'package:homescreen/themes/theme.dart';

import '../../../constants/reusable_text.dart';

class ReusableButton extends StatelessWidget {
  String? buttonTitle;
  double? height;
  double? width;
  ReusableButton({
    this.height=40,
    this.width=100,
    this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
              spreadRadius: .2,
              color: AppTheme.blackColor)
        ],
        borderRadius: BorderRadius.circular(10),
        color: AppTheme.whiteColor,
        border: Border.all(color: AppTheme.blackColor),

      ),
      child: Text(
          buttonTitle!,
        style:const TextStyle(
    fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppTheme.blackColor,

      ),
      )
    );
  }
}
