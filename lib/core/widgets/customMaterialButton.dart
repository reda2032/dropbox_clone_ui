import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text.dart';

class CustomMaterialButton extends StatelessWidget {
  final Color buttonColor;

  final String navigatorScreen;

  final String imagePath;

  final String label;
  final double padding;
  final TextStyle textStyles;

  const CustomMaterialButton({
    Key? key,
    required this.buttonColor,
    required this.navigatorScreen,
    required this.imagePath,
    required this.label,
    required this.padding,
    required this.textStyles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: buttonColor,
      ),
      child: MaterialButton(
        padding: const EdgeInsets.all(12),
        minWidth: 150,
        onPressed: () {
          Navigator.pushReplacementNamed(context, navigatorScreen);
        },
        child: Row(
          children: [
            CustomText(
              label: label,
              padding: padding,
              textStyles: textStyles,
            ),
            const SizedBox(width: 16),
            SvgPicture.asset(imagePath),
          ],
        ),
      ),
    );
  }
}
