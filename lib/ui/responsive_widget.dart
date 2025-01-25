import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  const ResponsiveWidget({Key? key, required this.desktop, required this.mobile }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile;
        } else {
          return desktop;
        }
      },
    );
  }
}
