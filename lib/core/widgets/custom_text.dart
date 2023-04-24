import 'package:flutter/material.dart';

import '../utils/app_values.dart';

// ignore: camel_case_types
class CustomText extends StatelessWidget {
  final String label;
  final double padding;
  final TextStyle textStyles;
  const CustomText({
    super.key,
    required this.label,
    required this.padding,
    required this.textStyles,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppPadding.p8, top: padding),
      child: Text(
        label,
        style: textStyles,
      ),

      //   Dribbox
    );
  }
}
