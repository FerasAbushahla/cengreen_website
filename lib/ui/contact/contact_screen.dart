import 'package:cengreen_website/ui/contact/desktop_contact.dart';
import 'package:cengreen_website/ui/contact/mobile_contact.dart';
import 'package:cengreen_website/ui/responsive_widget.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(desktop: DesktopContact(), mobile: MobileContact());
  }
}