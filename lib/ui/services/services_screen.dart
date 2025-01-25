import 'package:cengreen_website/ui/responsive_widget.dart';
import 'package:cengreen_website/ui/services/mobile_sevices.dart';
import 'package:flutter/material.dart';
import 'desktop_services.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: DesktopServices(),
      mobile: MobileServices(),
    );
  }
}
