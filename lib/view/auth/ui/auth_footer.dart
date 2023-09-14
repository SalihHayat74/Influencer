




import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  String? title;
  String? buttonText;
  void Function()? onPressed;
  AuthFooter({Key? key,this.title,this.buttonText,this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title!),
        TextButton(
            onPressed: onPressed,
            child: Text(buttonText!))
      ],
    );
  }
}
