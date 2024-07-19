import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage(
      {super.key,
      required this.switchLoginScreen,
      required this.switchToHomePage});

  final Function switchLoginScreen;
  final Function switchToHomePage;

  @override
  State<SignupPage> createState() {
    return _SignupPageState();
  }
}

class _SignupPageState extends State<SignupPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 150,
          ),
          const Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const Text(
            "Sign up to create new account",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 25),
          const TextField(
            decoration: InputDecoration(
              hintText: "Full Name",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 196, 190, 190),
              ),
              prefixIcon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 194, 190, 190),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              hintText: "Email",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 196, 190, 190),
              ),
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 194, 190, 190),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 196, 190, 190),
              ),
              prefixIcon: const Icon(
                Icons.lock,
                color: Color.fromARGB(255, 194, 190, 190),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            obscureText: _obscureText,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "Confirm Password",
              hintStyle: const TextStyle(
                color: Color.fromARGB(255, 196, 190, 190),
              ),
              prefixIcon: const Icon(
                Icons.lock,
                color: Color.fromARGB(255, 194, 190, 190),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
              ),
            ),
            obscureText: _obscureText,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 155, vertical: 15),
              backgroundColor: const Color.fromARGB(255, 3, 205, 199),
            ),
            child: const Text(
              "Sign Up",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "------------------------------or-------------------------------",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              widget.switchToHomePage("home-page");
            },
            style: const ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
            ),
            child: const Text(
              "Continue Without Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have account?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {
                  widget.switchLoginScreen("login-page");
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 32, 192, 128),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
