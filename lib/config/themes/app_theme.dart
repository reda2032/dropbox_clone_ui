import 'package:dropbox_clone_ui/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_values.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // main colors
      scaffoldBackgroundColor: AppColor.whiteColor,
      primaryColor: AppColor.whiteColor,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: AppColor.whiteColor,
        elevation: AppSize.s0,
      ),
      fontFamily: 'Gilroy');
}
