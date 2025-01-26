import 'package:flutter/material.dart';

class DesktopServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Services Overview',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body:SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text(
            'Services Overview',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16),
        _buildRow(
          leftFlex: 2,
          rightFlex: 3,
          leftChild: _buildServiceCard(
            context,
            title: 'Software Development',
            description: 'IT Solutions for businesses',
            buttonText: 'Explore services',
          ),
          rightChild: _buildImageCard(
            imagePath: 'assets/images/office_image.png',
          ),
        ),
        _buildRow(
          leftFlex: 3,
          rightFlex: 2,
          leftChild: _buildImageCard(
            imagePath: 'assets/images/office_image.png',
          ),
          rightChild: _buildServiceCard(
            context,
            title: 'Mobile App Development',
            description: 'Develop custom apps',
            buttonText: 'View details',
          ),
        ),
        _buildRow(
          leftFlex: 2,
          rightFlex: 3,
          leftChild: _buildServiceCard(
            context,
            title: 'Quality Assurance',
            description: 'Testing and debugging',
            buttonText: 'View details',
          ),
          rightChild: _buildImageCard(
            imagePath: 'assets/images/office_image.png',
          ),
        ),
        _buildRow(
          leftFlex: 3,
          rightFlex: 2,
          leftChild: _buildImageCard(
            imagePath: 'assets/images/office_image.png',
          ),
          rightChild: _buildServiceCard(
            context,
            title: 'Cloud Services',
            description: 'Data Security Solutions',
            buttonText: 'View details',
          ),
        ),
        SizedBox(height: 32),
        Center(
          child: Text(
            '© 2025 Cengreen. All rights reserved.',
            style: TextStyle(color: Colors.white54, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 16),
      ],
    ),
    ),
    );
  }

  Widget _buildRow({required Widget leftChild, required Widget rightChild,required int leftFlex,
    required int rightFlex,}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: leftFlex,
            child: leftChild,
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            flex: rightFlex,
              child: rightChild,
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard(
      BuildContext context, {
        required String title,
        required String description,
        required String buttonText,
      }) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCard({required String imagePath}) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          // height: ,
          width: double.infinity,
        ),
      ),
    );
  }
}


