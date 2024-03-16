import 'package:flutter/material.dart';

class CollegeDetailPage extends StatelessWidget {
  const CollegeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // Background Image
                Image.asset(
                  'assets/images/plain.png', // Path to your image asset
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                // Content
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Back Button
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      // Heading
                      const Text(
                        'Merakiu',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8), // Spacer
                      // Description
                      const Text(
                        'Merakiu is a Spanish startup that builds a female entrepreneurship platform. It offers free resources and online courses on various business aspects such as digital marketing, advertising, and brand building, among others. Additionally, Merakiu lets the users participate in its community of more than 20 000 women entrepreneurs and lists their businesses in its global entrepreneurship directory. This allows them to partner with fellow women businesswomen, and scale their companies.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16), // Spacer
                      // Location and Email
                      const Text(
                        'Location: Madrid, Spain\nEmail: contact@merakiu.com',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 16), // Spacer
                      // Heading
                      const Text(
                        'Wovoyage',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8), // Spacer
                      // Description
                      const Text(
                        'Indian startup wovoyage provides a travel tech platform that enables women-friendly travel. It allows female travelers to find safe women-friendly accommodation and transportation. wovoyage arranges for guided or private women-only tours. The startup also employs female drivers and guides as some women feel more comfortable and safe with them. Thus, wovoyage enables solo female travelers to accomplish their desired tours with more confidence and safety.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16), // Spacer
                      // Location and Email
                      const Text(
                        'Location: New Delhi, India\nEmail: info@wovoyage.com',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                      // Add more headings, descriptions, locations, and emails as needed
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
