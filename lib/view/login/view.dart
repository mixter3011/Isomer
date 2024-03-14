import 'package:fintech/common_widget/primary_button.dart';
import 'package:fintech/common_widget/secondary_button.dart';
import 'package:fintech/view/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/Splash.gif",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/wadwa.png",
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:500.0),
                child: PrimaryButton(title: "Get Started", onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
                }),
              ),
              const SizedBox(height: 20), // Adjust the spacing between buttons
              SecondaryButton(title: "Already have and Account", onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }
}
