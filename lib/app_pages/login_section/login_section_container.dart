import 'package:flutter/material.dart';
import 'package:new_project/app_pages/login_section/login_page.dart';
import 'package:new_project/app_pages/login_section/signup_page.dart';

class LoginSectionContainer extends StatefulWidget {
  const LoginSectionContainer({super.key});

  @override
  State<LoginSectionContainer> createState() {
    return _LoginSectionContainerState();
  }
}

class _LoginSectionContainerState extends State<LoginSectionContainer> {
  String activeLoginScreen = 'Login-page';

  void switchScreen(String screen) {
    setState(() {
      activeLoginScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/login_background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: currentActiveLoginScreen());
  }

  Widget currentActiveLoginScreen() {
    if (activeLoginScreen == "SignUp-Page") {
      return const SignupPage();
    } else {
      return LoginPage(switchLoginScreen: switchScreen);
    }
  }
}
