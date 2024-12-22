import 'package:cengreen_website/ui/desktopLayout.dart';
import 'package:cengreen_website/ui/mobileLayout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CengreenApp());
}

class CengreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black
      ),
      home: _buildResponsiveLayout(context),
    );
  }
}

Widget _buildResponsiveLayout(BuildContext context) {
  return LayoutBuilder(
    builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return Mobilelayout();
      } else {
        return DesktopLayout();
      }
    },
  );
}