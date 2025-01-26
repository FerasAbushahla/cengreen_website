import 'package:flutter/material.dart';

// class DesktopContact extends StatefulWidget {
//   @override
//   _DesktopContactState createState() => _DesktopContactState();
// }
//
// class _DesktopContactState extends State<DesktopContact> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _messageController = TextEditingController();
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _messageController.dispose();
//     super.dispose();
//   }
//
//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       // Process the form data
//       String name = _nameController.text;
//       String email = _emailController.text;
//       String message = _messageController.text;
//
//       // You can add your logic to send the message here
//       print('Name: $name');
//       print('Email: $email');
//       print('Message: $message');
//
//       // Show a success message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Message sent successfully!')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contact Information'),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Address:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               '123 Green Lane, Springfield',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Phone:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               '+1 (555) 123-4567',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Email:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'contact@cengreen.com',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 20),
//             Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: _nameController,
//                     decoration: InputDecoration(
//                       labelText: 'Name',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your name';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 20),
//                   TextFormField(
//                     controller: _emailController,
//                     decoration: InputDecoration(
//                       labelText: 'Email',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your email';
//                       }
//                       if (!value.contains('@')) {
//                         return 'Please enter a valid email';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 20),
//                   TextFormField(
//                     controller: _messageController,
//                     decoration: InputDecoration(
//                       labelText: 'Message',
//                       border: OutlineInputBorder(),
//                     ),
//                     maxLines: 5,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your message';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: _submitForm,
//                     child: Text('Send Message'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DesktopContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color
      appBar: AppBar(
        title: Text('Contact Information'),
        backgroundColor: Colors.green, // AppBar color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contact Information Section
            Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green, // Title color
              ),
            ),
            SizedBox(height: 20),

            // Address
            _buildContactInfoRow('Address:', '123 Green Lane, Springfield'),
            SizedBox(height: 10),

            // Phone
            _buildContactInfoRow('Phone:', '+1 (555) 123-4567'),
            SizedBox(height: 10),

            // Email
            _buildContactInfoRow('Email:', 'contact@cengreen.com'),
            SizedBox(height: 30),

            // Contact Form Section
            Text(
              'Contact Form',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green, // Title color
              ),
            ),
            SizedBox(height: 20),

            // Name Field
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Email Field
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Message Field
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 30),

            // Send Message Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add action for sending a message
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                child: Text(
                  'Send Message',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build contact info rows
  Widget _buildContactInfoRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.green, // Label color
          ),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87, // Value color
          ),
        ),
      ],
    );
  }
}