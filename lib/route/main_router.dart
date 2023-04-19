import 'package:flutter/material.dart';
import 'package:test_yakadir/speaking.dart';

import '../pages/home/home.dart';
import '../writting.dart';

class MainRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (BuildContext context) => const HomePage(),
        );
      case SpeakingPage.routeName:
        final Map<String, dynamic>? args =
            settings.arguments as Map<String, dynamic>?;

        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (BuildContext context) => const SpeakingPage(),
        );
      case WrittingPage.routeName:
        final Map<String, dynamic>? args =
            settings.arguments as Map<String, dynamic>?;

        return MaterialPageRoute<dynamic>(
          settings: settings,
          builder: (BuildContext context) => const SpeakingPage(),
        );

      default:
        assert(false, 'Need to implement ${settings.name}');
        return null;
    }
  }
}
