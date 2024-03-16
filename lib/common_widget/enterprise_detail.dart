import 'package:flutter/material.dart';

class EnterpriseDetailPage extends StatelessWidget {
  const EnterpriseDetailPage({Key? key}) : super(key: key);

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
                        'The Plastic Circle ',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 8), // Spacer
                      // Description
                      const Text(
                        'The Plastics Circle is a Sydney-based “non-bearded hipster tech” startup that mainly operates in various regions in Asia. It was founded by four people - Gillian Hyde, Trish Hyde, Murray Hyde, and Ben Reay in 2018. The founders found themselves discussing the double nature of plastic: on one hand, the scourge of the environment, on the other, a durable, versatile material that could be utilized if only we stopped treating it as waste.That inspired the creation of the Plastics Circle and its two SaaS products - PUMP and PlastX - that aim to help businesses and governments turn plastic into a part of a circular, closed-loop economy rather than landfill fodder. You can read more about the Plastics Circle in our interview with two of its founders, Trish Hyde and Gillian Hyde.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16), // Spacer
                      // Location and Email
                      const Text(
                        'Location: Sydney, Australia\nEmail:  theplasticscircle.com',
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
