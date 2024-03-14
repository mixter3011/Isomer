import 'package:flutter/material.dart';
import 'package:fintech/common/color_extensions.dart';
import 'package:fintech/common_widget/secondary_button.dart';
import 'package:fintech/view/login/signup.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plain.png"), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/wadwa.png",
                  width: 350,
                  height: 350,
                  fit: BoxFit.contain,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/apple_btn.png"),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/apple.png",
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Sign up with Apple",
                          style: TextStyle(
                              color: TColor.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/google_btn.png"),
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4))
                        ]),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          width: 15,
                          height: 15,
                          color: TColor.gray,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Sign up with Google",
                          style: TextStyle(
                              color: TColor.gray,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/fb_btn.png"),
                        ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.withOpacity(0.35),
                              blurRadius: 8,
                              offset: const Offset(0, 4))
                        ]),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/fb.png",
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Sign up with Facebook",
                          style: TextStyle(
                              color: TColor.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "or",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 25,
                ),
                SecondaryButton(
                  title: "Sign up with E-mail",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpView()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.white, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
