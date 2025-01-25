import 'package:flutter/material.dart';

class DesktopServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset('assets/images/cengreen-logo.png'),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Home', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Services', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Contact', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Services Overview',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              _buildRow1(context),
              SizedBox(height: 16),
              _buildRow2(context),
              SizedBox(height: 16),
              _buildRow3(context),
              SizedBox(height: 16),
              Container(
                color: Colors.black,
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '© 2025 Cengreen. All rights reserved.',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow1(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _buildServiceCard(
            context,
            'IT Solutions for Businesses',
            'Explore services',
            Icons.computer,
            'assets/images/it_solutions.jpg',
            'Featured',
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          flex: 1,
          child: _buildImagePlaceholder('assets/images/service_placeholder.jpg'),
        ),
      ],
    );
  }

  Widget _buildRow2(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildServiceCard(
            context,
            'Mobile App Development',
            'View details',
            Icons.phone_android,
            'assets/images/mobile_development.jpg',
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: _buildServiceCard(
            context,
            'Testing and Debugging',
            'View details',
            Icons.bug_report,
            'assets/images/testing.jpg',
          ),
        ),
      ],
    );
  }

  Widget _buildRow3(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: _buildImagePlaceholder('assets/images/service_placeholder.jpg'),
        ),
        SizedBox(width: 16),
        Expanded(
          flex: 2,
          child: _buildServiceCard(
            context,
            'Data Security Solutions',
            'View details',
            Icons.security,
            'assets/images/data_security.jpg',
          ),
        ),
      ],
    );
  }

  Widget _buildImagePlaceholder(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 120,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Placeholder for service details',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(
      BuildContext context,
      String title,
      String buttonText,
      IconData icon,
      String imagePath, [
        String? badge,
      ]) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (badge != null)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              child: Text(
                badge,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 120,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  icon: Icon(icon, size: 16),
                  label: Text(buttonText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

