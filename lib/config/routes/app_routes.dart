import 'package:flutter/material.dart';

import '../../core/utils/app_strings.dart';
import '../../features/home/home_screen.dart';
import '../../features/login/login_screen.dart';
import '../../features/my_profile/my_profile_screen.dart';
import '../../features/setting/setting_screen.dart';
import '../../features/side_menu/side_menu_screen.dart';
import '../../features/storage_details/storage_details_screen.dart';

class Routes {
  static const String loginRoute = "/login";
  static const String homeRoute = "/home";
  static const String profileRoute = "/profile";
  static const String settingRoute = "/setting";
  static const String sideMenuRoute = "/sideMenu";
  static const String storageRoute = "/storage";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) => const MyProfileScreen());
      case Routes.settingRoute:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.sideMenuRoute:
        return MaterialPageRoute(builder: (_) => const SideMenuScreen());
      case Routes.storageRoute:
        return MaterialPageRoute(builder: (_) => const StorageDetailsScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
