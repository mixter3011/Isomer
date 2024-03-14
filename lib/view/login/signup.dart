import 'package:fintech/common/color_extensions.dart';
import 'package:fintech/common_widget/primary_button.dart';
import 'package:fintech/common_widget/round_textfield.dart';
import 'package:fintech/view/login/signin.dart';
import 'package:fintech/view/main_tabview/main_tab_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Set resizeToAvoidBottomInset to true
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plain.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/wadwa.png",
                  width: 280,
                  height: 280,
                ),
                RoundTextField(
                  title: "  E-mail address",
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
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: TColor.gray70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: TColor.gray70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: TColor.gray70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 5,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: TColor.gray70,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Use 8 or more characters with a mix of letters,\nnumbers & symbols.",
                      style: TextStyle(color: TColor.gray50, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                PrimaryButton(
                  title: "Get started, it's free!",
                  onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => const MainTabView(),
                       ),
                    );
                  },
                ),
                const SizedBox(height: 45),
                Text(
                  "Do you have already an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 25,
                ),
                PrimaryButton(
                  title: "Sign in",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInView(),
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
