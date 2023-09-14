




import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:shimmer/shimmer.dart';

import '../../themes/theme.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  double splashFontSize=40;
  @override
  Widget build(BuildContext context) {
    double splashFontSize=40;

    return Scaffold(
      body: Container(
        color: AppTheme.mainThemeColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.,
              child: RichText(text: TextSpan(
                children: [
                  buildTextSpan(text: "I",color:Colors.blue),
                  buildTextSpan(text: "N",color:Colors.green),
                  buildTextSpan(text: "F",color:Colors.deepPurple),
                  buildTextSpan(text: "L",color:Colors.blue),
                  buildTextSpan(text: "U",color:Colors.orange),
                  buildTextSpan(text: "E",color:Colors.purple),
                  buildTextSpan(text: "N",color:Colors.pink),
                  buildTextSpan(text: "C",color:Colors.deepPurple),
                  buildTextSpan(text: "E",color:Colors.blue),
                  buildTextSpan(text: "R",color:Colors.green),
                ]
              )),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 60.0,right: 60),
              child: LinearProgressIndicator(
                backgroundColor: AppTheme.blackColor,
                color: AppTheme.mainThemeColor,
              ),
            ),
          ],
        ),
      ),

    );
  }

  TextSpan buildTextSpan({Color? color,String? text}) =>
      TextSpan(text: text!,style:
      TextStyle(color: color,
          fontSize: splashFontSize,
          fontWeight: FontWeight.bold));
}
