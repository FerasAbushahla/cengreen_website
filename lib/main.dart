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
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          width: 200,
            child: Image.asset('assets/images/cengreen-logo.png'),
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Hero Section
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/office_image.png',
                          fit: BoxFit.cover,
                          height: 300,
                          width: double.infinity,
                        ),
                        Container(
                          height: 300,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 120.0),
                            child: Column(
                              children: [
                                Text(
                                  'Welcome to Cengreen',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'At Cengreen, we are committed to delivering innovative software solutions that drive success for businesses around the world. Our team of expert developers is dedicated to transforming your vision into reality with cutting-edge technology and unparalleled expertise.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    // Mission, Values, Team Section
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3, // Responsive container height
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: _buildInfoCard(
                                context,
                                title: 'Our Mission',
                                description:
                                'To empower businesses through innovative software solutions that enhance efficiency and foster growth.',
                                icon: Icons.flag,
                              ),
                            ),
                            SizedBox(width: 16), // Space between cards
                            Expanded(
                              child: _buildInfoCard(
                                context,
                                title: 'Our Values',
                                description:
                                'Integrity, Innovation, and Excellence are the core values that drive our commitment to delivering top-notch software solutions.',
                                icon: Icons.public,
                              ),
                            ),
                            SizedBox(width: 16), // Space between cards
                            Expanded(
                              child: _buildInfoCard(
                                context,
                                title: 'Our Team',
                                description:
                                'A diverse group of professionals dedicated to providing exceptional software solutions tailored to client needs.',
                                icon: Icons.group,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Services Section
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'Explore Our Services',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Discover how our comprehensive range of services can help your business achieve its goals. From custom software development to IT consulting, Cengreen is your partner in innovation.',
                              style: TextStyle(color: Colors.white, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Text(
                                'Learn More',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Footer
                    Container(
                      color: Colors.black,
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '© 2024 Cengreen. All rights reserved.',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.facebook, color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.facebook, color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.facebook, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context,
      {required String title, required String description, required IconData icon}) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: constraints.maxHeight * 0.2), // Adjust icon size
              SizedBox(height: constraints.maxHeight * 0.05), // Responsive spacing
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: constraints.maxHeight * 0.12, // Responsive font size
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              SizedBox(height: constraints.maxHeight * 0.05), // Responsive spacing
              Flexible(
                child: Text(
                  description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: constraints.maxHeight * 0.08, // Responsive font size
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true, // Wrap text within the container
                  overflow: TextOverflow.ellipsis, // Prevent overflow with ellipsis
                  maxLines: 3, // Limit to 3 lines
                ),
              ),
            ],
          ),
        );
      },
    );
  }


}