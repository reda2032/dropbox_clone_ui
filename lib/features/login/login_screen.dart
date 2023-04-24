import 'package:dropbox_clone_ui/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/app_styles.dart';
import '../../core/utils/app_values.dart';
import '../../core/widgets/customMaterialButton.dart';
import '../../core/widgets/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage(
                AppImage.dropboxLogo, //  todo
              ),
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 31),
            const CustomText(
              label: AppStrings.welcomeTo,
              padding: AppPadding.p2,
              textStyles: Styles.textStyle20,
            ),
            const SizedBox(height: 8), // todo change the hard code
            const CustomText(
              label: AppStrings.dribbox,
              padding: AppPadding.p2,
              textStyles: Styles.textStyle38,
            ),
            const SizedBox(height: 18),
            const CustomText(
              label: AppStrings.dribboxInfo,
              padding: AppPadding.p2,
              textStyles: Styles.textStyle13,
            ),
            const SizedBox(height: 19),
            const CustomText(
              label: AppStrings.joinForFree,
              padding: AppPadding.p2,
              textStyles: Styles.textStyle13,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomMaterialButton(
                  navigatorScreen: '/home',
                  imagePath: AppIcons.smartId,
                  buttonColor: AppColor.blue.withOpacity(0.10),
                  textStyles: Styles.textStyle14,
                  padding: AppPadding.p2,
                  label: AppStrings.smartId,
                ),
                const CustomMaterialButton(
                  navigatorScreen: '/home',
                  imagePath: AppIcons.arrowRightSignIn,
                  buttonColor: AppColor.blue,
                  textStyles: Styles.textStyle14,
                  padding: AppPadding.p2,
                  label: AppStrings.signIn,
                ),
              ],
            ),
            const SizedBox(height: 28),
            const Align(
              alignment: Alignment.center,
              child: CustomText(
                label: AppStrings.useSocialLogin,
                padding: AppPadding.p4,
                textStyles: Styles.textStyle12,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.instagramIcon),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppIcons.facebookIcon),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const CustomText(
                  label: AppStrings.createAnAccount,
                  padding: AppPadding.p2,
                  textStyles: Styles.textStyle15,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

// ignore: camel_case_types
