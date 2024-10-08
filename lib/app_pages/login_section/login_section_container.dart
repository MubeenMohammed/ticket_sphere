import 'package:flutter/material.dart';
import 'package:ticket_sphere/app_pages/login_section/login_page.dart';
import 'package:ticket_sphere/app_pages/login_section/signup_page.dart';

class LoginSectionContainer extends StatefulWidget {
  const LoginSectionContainer({super.key, required this.switchToHomePage});

  final Function switchToHomePage;

  @override
  State<LoginSectionContainer> createState() {
    return _LoginSectionContainerState();
  }
}

class _LoginSectionContainerState extends State<LoginSectionContainer> {
  String activeLoginScreen = 'login-page';

  void loginSwitchScreen(String screen) {
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
            fit: BoxFit.fill,
          ),
        ),
        child: currentActiveLoginScreen());
  }

  Widget currentActiveLoginScreen() {
    if (activeLoginScreen == "signup-page") {
      return SignupPage(
          switchLoginScreen: loginSwitchScreen,
          switchToHomePage: widget.switchToHomePage);
    } else {
      return LoginPage(
          switchLoginScreen: loginSwitchScreen,
          switchToHomePage: widget.switchToHomePage);
    }
  }
}
