import 'package:cengreen_website/router.dart';
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
      initialRoute: '/services',
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}

// Widget _buildResponsiveLayout(BuildContext context) {
//   return LayoutBuilder(
//     builder: (context, constraints) {
//       if (constraints.maxWidth < 600) {
//         return Mobilelayout();
//       } else {
//         return DesktopLayout();
//       }
//     },
//   );
// }