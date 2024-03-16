import 'package:fintech/view/home/entrepreneur_home_view.dart';
import 'package:fintech/view/main_tabview/main_tab_view.dart';
import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  const Choice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/plain.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainTabView()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white.withOpacity(0.2), // White with transparency
                  onPrimary: Colors.white, // Text color
                  minimumSize: const Size(200, 50), // Same size for both buttons
                ),
                child: const Text("Investor"),
              ),
              const SizedBox(height: 20), // Adding some space between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EntrepreneurHomeView()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white.withOpacity(0.2), // White with transparency
                  onPrimary: Colors.white, // Text color
                  minimumSize: const Size(200, 50), // Same size for both buttons
                ),
                child: const Text("Entrepreneur"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
