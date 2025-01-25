import 'package:cengreen_website/ui/contact/contact_screen.dart';
import 'package:cengreen_website/ui/home/home_screen.dart';
import 'package:cengreen_website/ui/services/services_screen.dart';
import 'package:flutter/material.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/services':
        return MaterialPageRoute(builder: (_) => ServicesScreen());
      case '/contact':
        return MaterialPageRoute(builder: (_) => ContactScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('404: Page Not Found')),
          ),
        );
    }
  }
}
