import 'package:fintech/common/color_extensions.dart';
import 'package:fintech/view/login/signup.dart';
import 'package:flutter/material.dart';

import '../../common_widget/primary_button.dart';
import '../../common_widget/round_textfield.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plain.png"),
            fit: BoxFit.cover
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/wadwa.png",
                    width: 280,
                    height: 280,
                  ),
                RoundTextField(
                  title: "  Login",
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 30,
                ),
                RoundTextField(
                  title: "  Password",
                  controller: txtPassword,
                  obscureText: true,
                  textColor: Colors.white,
                ),
        
                 const SizedBox(
                  height: 8,
                ),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isRemember = !isRemember;
                        });
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            isRemember
                                ? Icons.check_box_rounded
                                : Icons.check_box_outline_blank_rounded,
                            size: 25,
                            color: TColor.gray50,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(color: TColor.gray50, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password",
                        style: TextStyle(color: TColor.gray50, fontSize: 14),
                      ),
                    ),
                  ],
                ),
        
                const SizedBox(
                  height: 8,
                ),
        
                PrimaryButton(
                  title: "Sign In",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const SocialLoginView(),
                    //   ),
                    // );
                  },
                ),
                const SizedBox(height: 50),
                Text(
                  "if you don't have an account yet?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(
                  title: "Sign up",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}