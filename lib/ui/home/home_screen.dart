import 'package:cengreen_website/ui/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'desktop_home.dart';
import 'mobile_home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(desktop: DesktopHome(), mobile: MobileHome());
  }
}