import 'package:flutter/material.dart';

import '../themes/theme.dart';


class ReusableTile extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? onTap;
  const ReusableTile({
    super.key,
    this.title,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: AppTheme.whiteColor,
        child: ListTile(
          leading: Icon(
            icon,
            size: 30,
            color: AppTheme.blackColor,
          ),
          title: Text(
            title!,
            style: AppTheme.heading2,
          ),
        ),
      ),
    );
  }
}
